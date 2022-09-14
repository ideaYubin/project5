//package sec02.exam01;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//
//
//@WebServlet("/member/*")
//public class Memebercontroller extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//        MemberDAO memberDAO;
//	public void init() throws ServletException{
//		memberDAO = new MemberDAO();
//	}
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request, response);
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request,response);
//	}
//	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		String nextPage = null;
//		request.setCharacterEncoding("utf-8");
//		response.setContentType("text/html;charset=utf-8");
//		String action = request.getPathInfo();
//		System.out.println("action : "+ action);
//		
//		if(action == null || action.equals("/listMembers.do"))
//				{
//					List membersList = memberDAO.listMembers();
//					request.setAttribute("membersList", membersList);
//					nextPage = "/test02/listMembers.jsp";
//				}else if(action.equals("/addMember.do")){
//					String id = request.getParameter("id");
//					String pwd = request.getParameter("pwd");
//					String name = request.getParameter("name");
//					String email = request.getParameter("email");
//					MemberVO memberVO = new MemberVO(id,pwd,name,email);
//					memberDAO.addMember(memberVO); 
//					nextPage = "/member/ListMembers.do";
//					
//				}else if(action.equals("/memberForm.do")) {
//					nextPage = "/test02/memberForm.jsp";
//					
//				}else {
//					List membersList = memberDAO.listMembers();
//					request.setAttribute("membersList", membersList);
//					nextPage = "/test02/listMembers.jsp";
//					
//				}
//		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);//next page => modMemberForm.jsp 호출과 동일//
//		dispatch.forward(request, response);
//		
//	}
//}
//
//
//
//















