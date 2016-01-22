package com.league.share.web.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.alibaba.fastjson.JSONObject;
import com.league.share.domain.Admin;
import com.league.share.domain.Security;
import com.league.share.service.SystemService;
import com.league.share.util.ApplicationConfigUtil;
import com.league.share.util.CaptchaUtil;
import com.league.share.util.CaptchaUtil.ComplexLevel;

import static com.league.share.util.ConstantUtil.CODE;
import static com.league.share.util.ConstantUtil.MSG;
import static com.league.share.util.ConstantUtil.EMPTY;

@Controller
@RequestMapping("/")
public class MainController extends BaseController{
	private  final Log Log = LogFactory.getLog(MainController.class);
	
	@Autowired
	private SystemService systemService;
	
	@RequestMapping(value="header", method=RequestMethod.GET)
	public String header() {
		
		return "include/header";
	}
	
	@RequestMapping(value="menu",method=RequestMethod.GET)
	public String menu(HttpServletRequest request) {
		request.setAttribute(ApplicationConfigUtil.getSessionKey(), request.getSession().getAttribute(ApplicationConfigUtil.getSessionKey()));
		return "include/menu";
	}
	
	@RequestMapping(value="navbar",method=RequestMethod.GET)
	public String navbar() {
		
		return "include/navbar";
	}
	
	@RequestMapping(value="themes",method=RequestMethod.GET)
	public String themes() {
		
		return "include/themes";
	}
	
	@RequestMapping(value="main", method=RequestMethod.GET)
	public String main() {
		
		return "include/main";
	}
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject login(String userName, String password, String code, HttpServletRequest request) {
		JSONObject result = new JSONObject();
		if(StringUtils.isBlank(userName) || StringUtils.isBlank(password)) {
			result.put(CODE, 0);
			result.put(MSG, this.getMessage("user.login.error", null, EMPTY));
			return result;
		}else{
			String sessionCode = (String) request.getSession().getAttribute("imgValidationCode");
			if(code != null && code.equals(sessionCode)){
				Admin admin = systemService.getAdmin(userName);
				if(admin != null){
					if(admin.getPassword() != null && admin.getPassword().equals(DigestUtils.md5Hex(password))) {
						Security security = new Security();
						security.setAdmin(admin);
						if(admin.getRole() != null){
							security.setMenu(systemService.getMenu(admin.getRole().getId()));
						}
						request.getSession().setAttribute(ApplicationConfigUtil.getSessionKey(), security);
						result.put(CODE, 201);
						result.put(MSG, null);
					}else{
						result.put(CODE, 3);
						result.put(MSG, this.getMessage("password.error", null, EMPTY));
					}
				}else{
					result.put(CODE, 2);
					result.put(MSG, this.getMessage("user.is.nonexistence", null, EMPTY));
				}
			}else{
				result.put(CODE, 1);
				result.put(MSG, this.getMessage("validate.code.error", null, EMPTY));
			}
		}
		return result;
	}
	
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		if(session != null) {
			session.invalidate();
		}
		return InternalResourceViewResolver.REDIRECT_URL_PREFIX+String.valueOf('/');
	}
	
	@RequestMapping(value="validate/code", method=RequestMethod.GET)
	@ResponseBody
	public void validateCode(HttpServletRequest request, HttpServletResponse response){
		try{
			HttpSession session = request.getSession();
			Object[] obj=CaptchaUtil.getCaptchaImage(100, 31, 16, 100, 500, true,true, ComplexLevel.SIMPLE);
			response.setHeader("Pragma","no-cache");
			response.setHeader("Cache-Control","no-cache");
			response.setDateHeader("Expires",0);
			response.setContentType("image/jpeg");
			ServletOutputStream sos=response.getOutputStream();
			ImageIO.write((BufferedImage)obj[0],"jpeg",sos);
			sos.close();
			session.setAttribute("imgValidationCode", obj[1]);
		} catch (IOException e){
			Log.error("error", e);
		}
	}
}
