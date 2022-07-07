package kakao.command;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.InputStream;
import java.util.Collection;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import kakao.domain.EmAdd_CtDTO;
import kakao.domain.EmAdd_ListDTO;
import kakao.domain.EmAdd_ctsubDTO;
import kakao.domain.EmAdd_eimgDTO;
import kakao.service.EmAddService;

public class EmAddContentHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int maxPostSize = 5 * 1024 * 1024; // 50MB
		String encoding = "UTF-8";
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		
		String saveDirectory = request.getRealPath("/upload") + File.separator + "null";
		File saveDir = new File(saveDirectory);
		if (!saveDir.exists()) {
			//생성
			saveDir.mkdirs();
		}

		
		// cos.jar
		MultipartRequest mrequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, policy);
		
		String p_el_name = mrequest.getParameter("name");
		
		//System.out.println(saveDirectory);
		String newName = request.getRealPath("/upload") + File.separator + p_el_name;

		if (saveDirectory.contains("null")) { //폴더 이름 변경
			File rename = new File(newName);
			saveDir.renameTo(rename);
		}
		
		
		
		// em_elist 추가
		File uploadFile = mrequest.getFile("mainimg");
		
		EmAdd_ListDTO dto = new EmAdd_ListDTO();
		if (uploadFile != null) { // 첨부 파일 존재할 경우
			
			String filesystemName_main = mrequest.getFilesystemName("mainimg");
			System.out.println("filesystemName_main : " + filesystemName_main);
			
			String p_el_maker = mrequest.getParameter("maker");
			int p_price = Integer.parseInt(mrequest.getParameter("price"));
			String p_el_mainimg = filesystemName_main;
			
			File uploadFile_sub = mrequest.getFile("stopimg");
			
			if (uploadFile_sub != null) {
				String filesystemName_stop = mrequest.getFilesystemName("stopimg");
				System.out.println("filesystemName_stop : " + filesystemName_stop);
				
				String p_el_stopimg = filesystemName_stop;
				
				dto.setEl_name(p_el_name);
				dto.setEl_maker(p_el_maker);
				dto.setEl_price(p_price);
				dto.setEl_mainimg(p_el_mainimg);
				dto.setEl_stopimg(p_el_stopimg);
			}
			
		} // if
		
		System.out.println("> em_elist 추가 완료!");
		EmAddService addEmElistService = EmAddService.getInstance();
		int rowCount = addEmElistService.insert_em_elist(dto);
		
		
		//em_ecatg 추가
		EmAdd_ctsubDTO dto_ct = new EmAdd_ctsubDTO();
		
		String p_ec_sub = mrequest.getParameter("catg");
		dto_ct.setEc_sub(p_ec_sub);
		
		System.out.println("> em_ecatg 추가 완료!");
		EmAddService addEmEcatgService = EmAddService.getInstance();
		rowCount = addEmEcatgService.insert_em_ecatg(dto_ct);
		
		
		
		//em_eimg 추가
		File addImgFile = new File(newName);
		
		FilenameFilter filter = new FilenameFilter() {
			@Override
			public boolean accept(File dir, String name) {
				return name.contains("path");
			}
		};
		
		String [] eimgName = addImgFile.list(filter);
		
		for (int i = 0; i < eimgName.length; i++) {
			EmAdd_eimgDTO dto_path = new EmAdd_eimgDTO();
			
			dto_path.setEi_path(eimgName[i]);
			
			EmAddService addEmEimgService = EmAddService.getInstance();
			addEmEimgService.insert_em_eimg(dto_path);
		}
		
		System.out.println("> em_eimg 추가 완료!");
		

		response.sendRedirect("em_add.do?add=success");
		
		return null;
	}

}
