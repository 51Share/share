package com.league.share.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.league.share.domain.Admin;
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
	
	@RequestMapping("/admin/add/{id:\\d+}")
	public String addAdmin(@PathVariable("id") int id, Model model){
		Admin admin = new Admin();
		if(id > 0){
			admin = systemService.getAdmin(id);
		}
		
		model.addAttribute("admin",admin);
		this.getRole(1, model);
		return "system/admin/add";
	}
	
	@RequestMapping("/admin/save")
	public String saveAdmin(Admin admin){
		systemService.saveAdmin(admin);
		return InternalResourceViewResolver.REDIRECT_URL_PREFIX+"/system/admin/list";
	}
	
	@RequestMapping("/admin/remove")
	@ResponseBody
	public boolean removeAdmin(int adminId){
		return systemService.removeAdmin(adminId);
	}
	
	@RequestMapping("/admin/edit/status")
	@ResponseBody
	public boolean editAdminStatus(int adminId){
		Admin admin = systemService.getAdmin(adminId);
		if(admin != null){
			if(admin.getStatus() > 0){
				admin.setStatus(0);
			}else{
				admin.setStatus(1);
			}
		}
		return systemService.saveAdmin(admin);
	}
	
	private void getRole(int status, Model model){
		
		model.addAttribute("roles", systemService.getRole(status));
	}
	
}
