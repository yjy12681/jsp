package com.coding404.user.service;


import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coding404.user.model.UserVO;

public interface UserService {
	//추상메서드
	int join(HttpServletRequest request, HttpServletResponse response); 
	
	UserVO login(HttpServletRequest request, HttpServletResponse response);
	
	UserVO getInfo(HttpServletRequest request, HttpServletResponse response);
	
	int updateInfo(HttpServletRequest request, HttpServletResponse response);
	
	int deleteInfo(HttpServletRequest request, HttpServletResponse response);
	
}
