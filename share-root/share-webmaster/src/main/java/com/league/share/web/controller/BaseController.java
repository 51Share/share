package com.league.share.web.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static com.league.share.util.ConstantUtil.DEFAULT_MESSAGE;

@Controller
@RequestMapping("/")
public class BaseController {
	
	@Autowired
	protected MessageSource messageSource;
	
	protected String getMessage(String code, Object[] args, String defaultMessage) {
		if (defaultMessage == null) {
			defaultMessage = DEFAULT_MESSAGE;
		}
		return messageSource.getMessage(code, args, defaultMessage, Locale.getDefault());
	}
}
