package com.ea.expresshire.controller;

import com.ea.expresshire.dao.AdminRepository;
import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.dao.RecruiterRepository;
import com.ea.expresshire.dao.UserRepository;
import com.ea.expresshire.exception.UserNotFoundException;
import com.ea.expresshire.model.*;
import com.ea.expresshire.services.admin.AdminService;
import com.ea.expresshire.services.applicant.ApplicantService;
import com.ea.expresshire.services.email.EmailService;
import com.ea.expresshire.services.recruiter.RecruiterService;
import com.ea.expresshire.services.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
    ApplicantService applicantService;

    @Autowired
    RecruiterService recruiterService;

    @Autowired
    UserService userService;

    @Autowired
    EmailService emailService;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping("/admin")
    public String profile(Model model, Principal principal){
        model.addAttribute("adminProfile", adminService.getAdminByEmail(principal.getName()));
        model.addAttribute("applicantList", applicantService.findApplicants());
        model.addAttribute("recruiterList", recruiterService.findRecruiters());
        return "admin";
    }

    @RequestMapping(value = "/admin/signup",method = RequestMethod.POST)
    public String addAdmin(@ModelAttribute("admin") @Valid Admin admin, BindingResult result){
        if(result.hasErrors()){
            return "index";
        }

        admin.setUserType(UserType.ROLE_ADMIN);
        admin.setEnabled(true);
        adminService.addAdmin(admin);

        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/editProfile", method = RequestMethod.POST)
    public String updateProfileAdmin(Principal principal, String fullName, String email, MultipartFile image) throws IOException {
        Admin admin = adminService.getAdminByEmail(principal.getName());
        String fileName = "";
        if(image != null) {
            byte[] bytes = image.getBytes();
            fileName = image.getOriginalFilename();
            String fileLocation = new File("src/main/resources/static/profileImages").getAbsolutePath() + "/" + fileName;
            FileOutputStream fos = new FileOutputStream(fileLocation);
            fos.write(bytes);
            fos.close();
        }
        if(fullName!="" && email!=""){
            admin.setFullName(fullName);
            admin.setEmail(email);
        }

        admin.setImageLink(fileName);
        adminService.addAdmin(admin);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/blackListApplicant",method = RequestMethod.POST)
    public String blackListUser(long applicant_id) {
        Applicant applicant = applicantService.findApplicantById(applicant_id);
        applicant.setEnabled(false);
        applicantService.addNewApplicant(applicant);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/removeFromBlackListApplicant",method = RequestMethod.POST)
    public String removeFromBlacklistUser(long applicant_id){
        Applicant applicant = applicantService.findApplicantById(applicant_id);
        applicant.setEnabled(true);
        applicantService.addNewApplicant(applicant);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/deleteApplicant",method = RequestMethod.POST)
    public String deleteUser(long applicant_id) throws UserNotFoundException {
        Applicant applicant = applicantService.findApplicantById(applicant_id);
        applicantService.deleteApplicant(applicant);
        userService.deleteUser(applicant);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/blackListRecruiter",method = RequestMethod.POST)
    public String blackListUserRecruiter(long recruiter_id) throws UserNotFoundException {
        Recruiter recruiter = recruiterService.findRecruiterById(recruiter_id);
        recruiter.setEnabled(false);
        recruiterService.addNewRecruiter(recruiter);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/removeFromBlackListRecruiter",method = RequestMethod.POST)
    public String removeFromBlacklistUserRecruiter(long recruiter_id) {
        Recruiter recruiter = recruiterService.findRecruiterById(recruiter_id);
        recruiter.setEnabled(true);
        recruiterService.addNewRecruiter(recruiter);
        return "redirect:/admin";
    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin/deleteRecruiter",method = RequestMethod.POST)
    public String deleteUserRecruiter(long recruiter_id) throws UserNotFoundException {
        Recruiter recruiter = recruiterService.findRecruiterById(recruiter_id);
        recruiterService.deleteRecruiter(recruiter);
        userService.deleteUser(recruiter);
        return "redirect:/admin";
    }

}
