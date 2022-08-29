package com.amdocs.onecommunity;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class OneCommunityApplication extends SpringBootServletInitializer {

	  @Override
	    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	        return application.sources(OneCommunityApplication.class);
	    }
	  
	public static void main(String[] args) {
		SpringApplication.run(OneCommunityApplication.class, args);
	}
}
