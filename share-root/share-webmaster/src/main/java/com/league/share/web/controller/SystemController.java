package com.league.share.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.league.share.service.SystemService;

@Controller
@RequestMapping("/system")
public class SystemController {
	
	@Autowired
	private SystemService systemService;
	
	@RequestMapping("/admin/list")
	public String listAdmin(Model model){
		model.addAttribute("admins", systemService.listAdmin(1, 10));
		return "system/admin/list";
	}
}
