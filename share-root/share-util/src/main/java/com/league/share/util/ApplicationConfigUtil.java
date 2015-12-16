package com.league.share.util;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ResourceBundle;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ApplicationConfigUtil {
	private static final Log log = LogFactory.getLog(ApplicationConfigUtil.class);
	private static final ResourceBundle BUNDLE = ResourceBundle.getBundle("config");
	private static final String WEB_INFO = "WEB-INF";
	private static final String CLASSES = "classes";
	private static final String UTF8 = "UTF-8";
	private static final String CLASS_PATH = ApplicationConfigUtil.class.getClassLoader().getResource("").getFile();
	
	public static String getApplicationPath() {
		try {
			File file = new File(URLDecoder.decode(CLASS_PATH, UTF8));
			if(file.exists() && file.isDirectory()){
				String path = "";
				//web application path is WEB-INFO/classes's parent path[decode %20 to blank if exists]
				if(CLASS_PATH.indexOf(WEB_INFO) != -1) {
					path = file.getCanonicalFile().getParentFile().getParentFile().getCanonicalPath();
				} else if(CLASS_PATH.indexOf(CLASSES) != -1) {
					path = file.getCanonicalFile().getParentFile().getCanonicalPath();
				} else {
					path = file.getCanonicalPath();
				}
				return path;
			} else {
				log.error("application path must be exist directory.");
			}
		} catch (UnsupportedEncodingException e) {
			log.error(e.getMessage(), e);
		} catch (IOException e) {
			log.error(e.getMessage(), e);
		}
		
		return null;
	}
	
	public static final String getSessionKey() {
		return BUNDLE.getString("session.key");
	}
	
	public static final String getMerchantSessionKey() {
		return BUNDLE.getString("session.merchant.key");
	}
	
	public static final String getWeixinSessionKey() {
		return BUNDLE.getString("session.weixin.key");
	}
	
	public static final String getOSSPath() {
		return BUNDLE.getString("oss.path");
	}
	
	public static final String getResourcePath() {
		return BUNDLE.getString("resource.path");
	}

	public static final String getMobilePath() {
		return BUNDLE.getString("mobile.path");
	}
	
	public static final String get(String key) {
		return BUNDLE.getString(key);
	}
}
