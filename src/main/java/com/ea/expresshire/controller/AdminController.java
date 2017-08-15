package com.ea.expresshire.controller;

import com.ea.expresshire.dao.AdminRepository;
import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.dao.RecruiterRepository;
import com.ea.expresshire.dao.UserRepository;
import com.ea.expresshire.model.Admin;
import com.ea.expresshire.model.UserType;
import com.ea.expresshire.services.admin.AdminService;
import com.ea.expresshire.services.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

/**
 * Created by kcp on 8/11/17.
 */
@Controller
public class AdminController {
    @Autowired
    AdminService adminService;

    @Autowired
    RecruiterRepository recruiterRepository;

    @Autowired
    ApplicantRepository applicantRepository;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping("/admin")
    public String profile(Model model, Principal principal){
        model.addAttribute("adminProfile", adminService.getAdminByEmail(principal.getName()));
//        model.addAttribute("applicantList", applicantRepository.findAll());
//        model.addAttribute("recruiterList", recruiterRepository.findAll());
        return "admin";
    }

    @RequestMapping(value = "/admin/signup",method = RequestMethod.POST)
    public String adminSignup(@ModelAttribute("admin") Admin admin){
        admin.setUserType(UserType.ROLE_ADMIN);
        adminService.addAdmin(admin);
        return "redirect:/index";
    }

}
