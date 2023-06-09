package com.coding404.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import com.coding404.user.model.UserVO;
import com.coding404.user.service.UserService;
import com.coding404.user.service.UserServiceImp1;


@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public UserController() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();		
		String command = uri.substring(conPath.length());

		System.out.println(command);

		//** MVC2에서는 화면을 띄우는 요청도 컨트롤러를 거쳐 나가도록 처리
		//** 기본이동이 전부 forward 형식으로 처리를 합니다.
		//** 리다이렉트는 다시 컨트롤러를 태워 나가는 용도로 사용합니다.

		//필요한 객체를 if문 바깥에 선언
		UserService service = new UserServiceImp1();
		HttpSession session = request.getSession();

		if(command.equals("/user/user_join.user")) {

			request.getRequestDispatcher("user_join.jsp").forward(request, response);

		}else if(command.equals("/user/user_login.user")) {
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}else if(command.equals("/user/joinForm.user")) {
			//가입
			int result =service.join(request, response);

			if(result == 1) {//중복
				request.setAttribute("msg", "중복된 아이디 입니다");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);				
			}else {//가입성공
				response.sendRedirect("user_login.user");
			}
		}else if(command.equals("/user/loginForm.user")){
			UserVO vo = service.login(request, response);
			
			if(vo == null) {//로그인 실패
				request.setAttribute("msg", "아이디 비밀번호를 확인하세요");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
			}else {//로그인 성공
				//세션의 회원정보 저장 / 자바에서 세션얻는 방법
				
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				response.sendRedirect("user_mypage.user");
			}
			
		}else if(command.equals("/user/user_mypage.user")) {
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
			
		}else if(command.equals("/user/user_logout.user")) { //로그아웃 - 인증수단을 삭제
			session.invalidate();
			response.sendRedirect("user_login.user");
		}else if(command.equals("/user/user_modify.user")) {
			
			UserVO vo = service.getInfo(request, response);
			request.setAttribute("vo", vo);
			
			request.getRequestDispatcher("user_modify.jsp").forward(request, response);
		}else if(command.equals("/user/user_update.user")) {
			int result = service.updateInfo(request, response);
			
			if(result == 1) { // 성공(유저닉네임이 변경)
				
				String name = request.getParameter("name");
				session.setAttribute("user_name", name);
				
				//out객체를 이용한 메시지 전달
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");				
				out.println("alert('회원 정보가 변경되었습니다.')");				
				out.println("location.href='user_mypage.user';");
				out.println("</script>");
				
//				response.sendRedirect("user_mypage.user");
			}else {
				response.sendRedirect("user_modify.user");
			}
			
		}else if(command.equals("/user/user_delete.user")) {
			int result = service.deleteInfo(request, response);
			System.out.println(result);
			if(result == 1 ) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");				
				out.println("alert('회원 정보가 삭제되었습니다.')");				
				out.println("location.href='user_login.user';");
				out.println("</script>");
			}else {
				response.sendRedirect("user_mypage.user");
			}
		}


		}
	}



