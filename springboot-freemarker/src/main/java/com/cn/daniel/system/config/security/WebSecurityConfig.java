package com.cn.daniel.system.config.security;

import com.cn.daniel.system.config.security.support.LoginSuccessHandler;
import com.cn.daniel.system.service.impl.SysUserServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * security配置
 *
 * @author Daniel
 * @time 2017-07-10
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	UserDetailsService sysUserService() { // 注册UserDetailsService 的bean
		return new SysUserServiceImpl();
	}

	@Bean
	public LoginSuccessHandler loginSuccessHandler() {
		return new LoginSuccessHandler();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(sysUserService()); // user Details Service验证

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/aceadmin/**", "/css/**").permitAll()// 资源路径任意访问
				.anyRequest().authenticated() // 任何请求,登录后可以访问
				.and().formLogin().loginPage("/login").failureUrl("/login?error").permitAll() // 登录页面用户任意访问
				.successHandler(loginSuccessHandler()) //使用自定义的SuccessHandler 进行一些登录成功后的操作
				.and().logout().permitAll()// 注销行为任意访问
				.and().headers().frameOptions().disable() //允许使用iframe
				.and().csrf().disable(); // 禁用csrf
	}
}