package com.www.aram.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// 인증이 안된 사용자들이 출입할 수 있는 경로를 /auth/**허용
// 주소가 / 이면 index.jsp 허용
// static 이하에 있는 /js/**,/css/**,/image/**
 
@Controller
public class UserController {

	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/user/updateUserForm")
	public String updateUserForm() {
		return "user/updateUserForm";
	}
	
//	public boolean idCheck(String username, String password) {
//		if(username.equals("admin")&&password.equals("1234")) {
//			return true;
//		} else {
//			return false;
//		}
//	}
//	
//	public boolean remember(boolean remember) {
//		return remember;
//	}
//	
//	public boolean isLogin(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		if(session.getAttribute("id") == null) {
//			return false;
//		} else {
//			return true;
//		}
//	}
}
