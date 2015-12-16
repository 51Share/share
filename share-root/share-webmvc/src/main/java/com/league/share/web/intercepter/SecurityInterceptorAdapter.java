package com.league.share.web.intercepter;


import static com.league.share.util.ConstantUtil.SLASH;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.league.share.util.ApplicationConfigUtil;

public class SecurityInterceptorAdapter extends HandlerInterceptorAdapter {
	@Autowired
	private MessageSource messageSource;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String requestUri = request.getRequestURI();
		if(StringUtils.isNotBlank(requestUri) && !StringUtils.startsWith(requestUri, SLASH)) {
			requestUri = SLASH+requestUri;
		}
		
		Object security = request.getSession().getAttribute(ApplicationConfigUtil.getSessionKey());
		if (security == null) {
//			response.sendRedirect(SLASH);
			request.setAttribute("message", messageSource.getMessage("no.session", null, Locale.getDefault()));
			request.getRequestDispatcher(SLASH).forward(request, response);
			return false;
		}
		return super.preHandle(request, response, handler);
	}
}