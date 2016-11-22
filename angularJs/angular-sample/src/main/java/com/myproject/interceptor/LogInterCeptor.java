/**
 * 
 */
package com.myproject.interceptor;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author shekhar
 *
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface LogInterCeptor {
	
	public enum Logger {
	    INFO,
	    DEBUG;
	}

	
}
