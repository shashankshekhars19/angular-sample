package com.myproject.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.myproject.bo.Customer;
import com.myproject.guice.MyGuiceImpl;
import com.myproject.interceptor.LogInterCeptor;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@Path("/myHandler")
@Api(value="/employees", description = "Endpoint for Employee listing")
public class RestHandler {

	@GET
	@Path("/address")
	@Produces(MediaType.APPLICATION_JSON)
	 @ApiOperation(
			    value = "Lists all employees", 
			    notes = "Lists all employees"
			    )
			    @ApiResponses(value= {
			    @ApiResponse(code = 200, message = "Successful retrieval of employees"),
			    @ApiResponse(code = 404, message = "Employee records not found"),
			    @ApiResponse(code = 500, message = "Internal server error")
			    })
	@LogInterCeptor
	public Response getDetails(){
		Customer customer =  new Customer();
	   Guice.createInjector(new MyGuiceImpl());
		customer.setName("Shashank");
		customer.setAddress("pune");
		customer.setPhoneNo("9108953283");
		customer.setGender("M");
		
		return Response.ok(customer).build();
		
		
	}
}
