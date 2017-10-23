package com.tm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tm.pojo.User;
import com.tm.service.UserService;

@Controller
@RequestMapping("/admin.action")
public class UserController {
	@Resource
	private UserService service;
	
	/**
	 * 登录 
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(params ="method=login")
	public String login(HttpSession session,HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User aUser =new User();
		aUser=service.selectById(1);
		System.out.println(aUser.toString());
		/*if(service.login(new User(username,password))){
			//在Session里保存信息  
	        session.setAttribute("username", username);  
	        //重定向  
	        return "redirect:admin/main/index.jsp";   
		}*/
		return "redirect:admin/error/failure.jsp";
	}
	
	@RequestMapping(params ="method=logout")
	public String logout(HttpSession session,HttpServletResponse response) throws Exception{
		//清除session
		session.invalidate();
		response.setHeader("Pragma", "No-cache");  
		response.setHeader("Cache-Control", "no-cache");  
		response.setDateHeader("Expires", 0);  
		return "redirect:admin/login/login.jsp";
	}
	
}
