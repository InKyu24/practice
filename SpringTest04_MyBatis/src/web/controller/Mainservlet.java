package web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dao.MemberDAO;
import web.vo.MemberVO;

public class Mainservlet extends HttpServlet {
	// MemberDAO 객체를 생성
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException {
		dao = new MemberDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String sign = request.getParameter("sign");
		if (sign == null) {
			return;
		} else if (sign.equals("listMembers")) {
			// selectAllMemberList()를 호출
			List<MemberVO> memberList = dao.selectAllMemberList();
			
			request.setAttribute("memberList", memberList);
			RequestDispatcher dispatch = request.getRequestDispatcher("listMembers.jsp");
			dispatch.forward(request, response);
			
		} else if (sign.equals("login")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			MemberVO m = new MemberVO(id, pw);
			String name = dao.login(m);
			
			request.setAttribute("name", name);
			RequestDispatcher dispatch = request.getRequestDispatcher("login_ok.jsp");
			dispatch.forward(request, response);
			
		} else if (sign.equals("selectMemberById")) {
			String id = request.getParameter("id");
			MemberVO memberVO= dao.selectMemberById(id);
			
			request.setAttribute("memberVO", memberVO);
			RequestDispatcher dispatch = request.getRequestDispatcher("memberById.jsp");
			dispatch.forward(request, response);
			
		} else if (sign.equals("selectMemberByPw")) {
			String pw = request.getParameter("pw");
			List<MemberVO> memlist = dao.byPwList(pw);
			
			request.setAttribute("list", memlist);
			RequestDispatcher dispatch = request.getRequestDispatcher("memberByPw.jsp");
			dispatch.forward(request, response);			
			
		} else if (sign.equals("memberInsert")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			Date now = new Date();
			
			MemberVO memberVO = new MemberVO (id, pw, name, now);
			dao.memberInsert(memberVO);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("index.html");
			dispatch.forward(request, response);	
			
		} else if (sign.equals("memberUpdate")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			
			MemberVO memberVO = new MemberVO (id, pw, name, null);
			dao.memberUpdate(memberVO);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("main?sign=listMembers");
			dispatch.forward(request, response);
			
		} else if (sign.equals("memberDelete")) {
			String id = request.getParameter("id");
			
			dao.memberDelete(id);
			RequestDispatcher dispatch = request.getRequestDispatcher("main?sign=listMembers");
			dispatch.forward(request, response);	
		}
	}
}

