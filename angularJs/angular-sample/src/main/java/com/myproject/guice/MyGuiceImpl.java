package com.myproject.guice;

import com.google.inject.AbstractModule;
import com.google.inject.matcher.Matchers;
import com.myproject.interceptor.LogInterCeptor;
import com.myproject.interceptor.MyInterceptor;

public class MyGuiceImpl extends AbstractModule {

	@Override
	protected void configure() {
		System.out.println("hi");
		 bindInterceptor(Matchers.any(), Matchers.annotatedWith(LogInterCeptor.class), 
			        new MyInterceptor());
	}

}
