package com.ea.expresshire.controller;

import com.ea.expresshire.dao.AdminRepository;
import com.ea.expresshire.model.Admin;
import com.ea.expresshire.services.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kcp on 8/11/17.
 */
@Controller
public class AdminController {
    @Autowired
    AdminService adminService;

    @RequestMapping("/admin")
    public String adminRoot(){
        return "admin";
    }

    @RequestMapping(value = "/admin/signup",method = RequestMethod.POST)
    public String adminSignup(@ModelAttribute("admin") Admin admin){
        adminService.addAdmin(admin);
        return "redirect:/admin/recruiter";
    }

    @RequestMapping("/admin/login")
    public String adminLogin(){
        return "adminApplicantPage";
    }

    @RequestMapping("/admin/recruiter")
    public String recruiter(){

        return "adminRecPage";
    }

    @RequestMapping("/admin/applicant")
    public String applicant(){
        return "adminApplicantPage";
    }

    @RequestMapping("/admin/profile")
    public String profile(Model model){
        model.addAttribute("adminProfile", adminService.getAdmin());
        return "adminProfile";
    }

}
