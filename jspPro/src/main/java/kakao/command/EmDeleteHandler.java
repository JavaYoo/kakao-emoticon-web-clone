package kakao.command;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.service.EmDeleteService;

public class EmDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> 삭제 완료!");
		EmDeleteService listService = EmDeleteService.getInstance();
		
		String del = request.getParameter("del");
		
		String [] num_name = del.split(",");
		
		int el_num = Integer.parseInt(num_name[0]);
		listService.emDelete(el_num);
		
		if (el_num >= 103) {
			String el_name = num_name[1];
			String saveDirectory = request.getRealPath("/upload") + File.separator + el_name;
			File delFolder = new File(saveDirectory);
			
			while(delFolder.exists()) {
				File[] folder_list = delFolder.listFiles(); //파일리스트 얻어오기
						
				for (int i = 0; i < folder_list.length; i++) {
					folder_list[i].delete(); //파일 삭제 
					System.out.println("파일이 삭제되었습니다.");	
				}
						
				if(folder_list.length == 0 && delFolder.isDirectory()){ 
					delFolder.delete(); //폴더 삭제
					System.out.println("폴더가 삭제되었습니다.");
				}
			}
		}
		
		response.sendRedirect("em_delete.do?del=success");
		
		return null;
	}

}
