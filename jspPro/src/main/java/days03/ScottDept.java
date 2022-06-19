package days03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBconn;

import days02.DeptDTO;

@WebServlet("/scott/dept")
public class ScottDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ScottDept() {
        super();
        
    }
    
    // get
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" > ScottDept 서블릿의 doGet() 호출 O ");
		
		ArrayList<DeptDTO> list = null;
		Connection conn = DBconn.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "SELECT deptno, dname, loc "
						+ " FROM dept";
		int deptno;
		String dname, loc;
		try{
			
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				list = new ArrayList<DeptDTO>();
				do{
					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");
					
					DeptDTO dto = new DeptDTO(deptno, dname, loc);
					list.add(dto);
					
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		DBconn.close();
		
		request.setAttribute( "list" , list );
		
		// 포워딩
		// String path ="ex06_dept.jsp";  // /scott/ex06_dept.jsp   404 오류
		//String path ="/days03/ex06_dept.jsp";
		String path ="/days03/ex06_dept_jstl.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
