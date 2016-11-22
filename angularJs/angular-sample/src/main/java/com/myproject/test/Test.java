package com.myproject.test;

import com.google.inject.Guice;
import com.myproject.guice.MyGuiceImpl;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		  Guice.createInjector(new MyGuiceImpl());

	}

}
