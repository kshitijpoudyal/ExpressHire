package com.ea.expresshire.services.admin;

import com.ea.expresshire.dao.AdminRepository;
import com.ea.expresshire.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

/**
 * Created by kcp on 8/11/17.
 */
@Service
public class AdminServiceImplementation implements AdminService{
    @Autowired
    AdminRepository adminRepository;
    @Override
    public void addAdmin(Admin admin) {
        adminRepository.save(admin);
    }

    @Override
    public Admin getAdminByEmail(String email) {
        return adminRepository.findAdminByEmail(email);
    }

    @Override
    public List<Admin> getAllAdmin() {
        return adminRepository.findAll();
    }

}
