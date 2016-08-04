package com.hybrid.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	/* 보안 설정 로그인 화면 */
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
			.withUser("admin")
			.password("1234")
			.roles("ADMIN");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/index.jsp").permitAll()	// 얘만 허용
			.antMatchers("/**").hasRole("ADMIN")	// 나머지는 ADMIN 권한 있어야한다. 
			.and()
			.formLogin()
			.loginPage("/login.jsp").permitAll()
			.and()
			.logout()
			.logoutSuccessUrl("/index.jsp");
	}
}
