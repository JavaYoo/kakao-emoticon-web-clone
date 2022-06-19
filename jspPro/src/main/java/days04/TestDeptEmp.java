package days04;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBconn;

import days02.DeptDTO;
import days02.EmpDTO;

@WebServlet("/test/test00.htm")
public class TestDeptEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestDeptEmp() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("> /test/tset00.htm -> doGet() 호출됨");
		
		ArrayList<DeptDTO> dlist = null;
		Connection conn = DBconn.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT deptno, dname, loc "
						+ " FROM dept";
		int deptno;
		String dname, loc;
		try{
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				dlist = new ArrayList<DeptDTO>();
				do{
					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");
					
					DeptDTO dDto = new DeptDTO(deptno, dname, loc);
					dlist.add(dDto);
					
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		} finally { 
			try { 
				rs.close(); 
				pstmt.close(); } 
			catch (SQLException e) {
			 e.printStackTrace(); 
			 } 
		}
			 
		// pdeptno 10
		// /jspPro/test/test00.htm?deptno=20 
		// /jspPro/test/test00.htm 				null
		// /jspPro/test/test00.htm?deptno=
		
		String pdeptno = request.getParameter("deptno");
		if ( pdeptno == null || pdeptno.equals("") ) {
			pdeptno = "10";
		}
		
		
		ArrayList<EmpDTO> elist = null;
		
		
		sql = 		"SELECT * "
						+ " FROM emp "
						+ " WHERE deptno = ? "
						+ " ORDER BY ename ASC ";
		try{
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt( 1, Integer.parseInt(pdeptno));
			rs = pstmt.executeQuery();
			
			int empno;
			String ename, job;
			int mgr;
			Date hiredate;  // java.sql.Date		String
			double sal, comm;
			
			if(rs.next()){
				elist = new ArrayList<EmpDTO>();
				do{
					empno = rs.getInt("empno");
					ename = rs.getString("ename");
					job = rs.getString("job");
					mgr = rs.getInt("mgr");
					hiredate = rs.getDate("hiredate");
					sal = rs.getDouble("sal");
					comm = rs.getDouble("comm");
					deptno = rs.getInt("deptno");
					
					EmpDTO eDto = new EmpDTO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
					elist.add(eDto);
					
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
	            pstmt.close(); 
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
		}
		
		DBconn.close();
		
		request.setAttribute( "dlist" , dlist );
		
		
		
		request.setAttribute( "elist" , elist );
		
		request.setAttribute( "name" , "Hong gil Dong");
		
		// 포워딩  / 리다이렉트
		//  /jspPro/test/test00.htm
		//   /jspPro/test/ex01_forward.jsp   404
		// String path ="/days03/test/test01.jsp";
		String path ="/days04/ex01_forward.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	}

}
