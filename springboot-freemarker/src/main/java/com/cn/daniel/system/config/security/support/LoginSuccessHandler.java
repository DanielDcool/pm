package com.cn.daniel.system.config.security.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;



/**
 * Success handler
 *
 * @author Daniel
 * @time 2017-07-13
 */
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
	/*	final RequestCache requestCache = new HttpSessionRequestCache();
		final SavedRequest savedRequest = requestCache.getRequest(request, response);
		requestCache.removeRequest(request, response);*/
		
		// 获得授权后可得到用户信息 可使用SUserService进行数据库操作
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		/* Set<SysRole> roles = userDetails.getSysRoles(); */
		// 输出登录提示信息
		System.out.println("管理员 " + userDetails.getUsername() + " 登录");
		//System.out.println("IP :" + getIpAddress(request));
		super.onAuthenticationSuccess(request, response, authentication);
	}
}
