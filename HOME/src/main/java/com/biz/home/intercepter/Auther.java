/*package com.biz.home.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Auther extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(Auther.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userid") == null) {
			session.removeAttribute("userid");
			logger.info("Login Null");
			response.sendRedirect("login.do");
			return false;
		}
		return true;
	}
}*/