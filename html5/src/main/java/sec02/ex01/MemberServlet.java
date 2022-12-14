package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mem12")
public class MemberServlet extends HttpServlet {
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	PrintWriter writer = response.getWriter();
	String id = (String)request.getParameter("id");
	System.out.println("id = " + id);
	MemberDAO memberDAO = new MemberDAO();
	boolean overlappedID = memberDAO.overlappedID(id);
	
	if(overlappedID == true) {
		writer.print("not_usable");
	} else {
		writer.print("usable");
	}
	}

}
