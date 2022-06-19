package days03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
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
import days02.EmpDTO;

@WebServlet("/test/dept/emp")
public class TestDeptEmp extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = DBconn.getConnection();
		PreparedStatement pstmt = null;

		ArrayList<DeptDTO> deptList = null;
		String sql1 = "SELECT deptno, dname " + " FROM dept" +" ORDER BY deptno asc";
		int deptno;
		String dname;
		try {

			pstmt = conn.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				deptList = new ArrayList<DeptDTO>();
				do {
					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");

					DeptDTO dDto = new DeptDTO(deptno, dname);
					deptList.add(dDto);

				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		
	    String pdeptno = request.getParameter("selDept");
	    deptno = pdeptno==null? 50:Integer.parseInt(pdeptno); 
		ArrayList<EmpDTO> empList = null;

		String sql2 = "SELECT empno, ename, job, mgr, hiredate, sal, comm" + " FROM emp" + " where deptno = ?"
				+ " ORDER BY empno asc";

		try {

			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, deptno);
			ResultSet rs = pstmt.executeQuery();

			int empno;
			String ename, job;
			int mgr;
			Date hiredate; // java.sql.Date String
			double sal, comm;

			if (rs.next()) {
				empList = new ArrayList<EmpDTO>();
				do {
					empno = rs.getInt("empno");
					ename = rs.getString("ename");
					job = rs.getString("job");
					mgr = rs.getInt("mgr");
					hiredate = rs.getDate("hiredate");
					sal = rs.getDouble("sal");
					comm = rs.getDouble("comm");

					EmpDTO eDto = new EmpDTO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
					empList.add(eDto);

				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		DBconn.close();
		request.setAttribute("deptList", deptList);
		request.setAttribute("empList", empList);

		String path = "/days03/test/test01.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
