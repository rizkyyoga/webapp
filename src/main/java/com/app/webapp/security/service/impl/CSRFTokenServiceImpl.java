package com.app.webapp.security.service.impl;

import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.app.webapp.security.service.CSRFTokenService;



@Service("csrfTokenService")
public class CSRFTokenServiceImpl implements CSRFTokenService {

	private final SecureRandom random = new SecureRandom();

	public String generateToken() {
		final byte[] bytes = new byte[32];
		random.nextBytes(bytes);
		return Base64.encodeBase64URLSafeString(bytes);
	}

	public String getTokenFromSession(HttpServletRequest request) {

		return this.getTokenFromSessionImpl(request.getSession());
	}

	private String getTokenFromSessionImpl(final HttpSession session) {
		String token = null;

		if (session != null) {

			token = (String) session.getAttribute(TOKEN_ATTRIBUTE_NAME);
			if (StringUtils.isBlank(token))
				session.setAttribute(TOKEN_ATTRIBUTE_NAME, (token = generateToken()));
		}

		return token;
	}

	public boolean acceptsTokenIn(HttpServletRequest request) {
		boolean rv = false;
		// Token is only verified if principal is not null
		/*
		 * if (request.getUserPrincipal() == null) rv = true; else {
		 */
		final HttpSession session = request.getSession(false);
		rv = session != null
				&& this.getTokenFromSessionImpl(session).equals(request.getParameter(TOKEN_PARAMETER_NAME));
		/* } */
		return rv;
	}

}
