package com.init;


import java.util.Set;

import javax.servlet.ServletContainerInitializer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.annotation.HandlesTypes;

@HandlesTypes({})
public class Tt implements ServletContainerInitializer{

	@Override
	public void onStartup(Set<Class<?>> c, ServletContext context)
			throws ServletException {
		// TODO Auto-generated method stub
		
		ServletRegistration reg =context.addServlet("ss", "com.src.Test");
		reg.addMapping("/surl");
		
	}

}
