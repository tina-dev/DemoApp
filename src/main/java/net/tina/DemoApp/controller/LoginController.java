package net.tina.DemoApp.controller;


import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.tina.DemoApp.model.Users;
import net.tina.DemoApp.service.CustomUserDetailsService;

@Controller
public class LoginController
{
	@Autowired
    private CustomUserDetailsService userDetailsService;
	
	@RequestMapping(value = {"", "/", "/login"}, method = RequestMethod.GET)
	public String getLoginPage()
	{
		return "login";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String registerUser(HttpServletRequest request)
	{
		String name = request.getParameter("name");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String usertype = request.getParameter("usertype");
		
		if(password1 != null && password2 != null && password1.equals(password2))
		{
			try
			{
				
				Users newUser = new Users();
				newUser.setName(name);
				newUser.setLastName(lastname);
				newUser.setEmail(email);
				newUser.setUsername(username);
				newUser.setPassword(password1);
				
				userDetailsService.registerNewUser(newUser);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		
		return "login";
	}
}