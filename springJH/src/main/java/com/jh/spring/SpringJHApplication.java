package com.jh.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan
@EnableAutoConfiguration(
		//exclude = JpaRepositoriesAutoConfiguration.class
		 exclude = { HibernateJpaAutoConfiguration.class}
		)
public class SpringJHApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringJHApplication.class, args);
	}

}
