package com.app.webapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.app.webapp.security.service.CSRFTokenService;



public class CSRFProtectionInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private CSRFTokenService csrfTokenService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean rv = true;
		if (CSRFTokenService.METHODS_TO_CHECK
				.contains(StringUtils.defaultIfBlank(request.getMethod(), "").toUpperCase())
				&& !csrfTokenService.acceptsTokenIn(request)) {
			response.addHeader("X-DailyFratze-InvalidCSRFToken", Boolean.toString(true));
			response.sendError(HttpServletResponse.SC_FORBIDDEN);
			rv = false;
		}

		return rv;
	}

}
