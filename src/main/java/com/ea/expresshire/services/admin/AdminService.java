package com.ea.expresshire.services.admin;

import com.ea.expresshire.model.Admin;

import java.util.List;

/**
 * Created by kcp on 8/11/17.
 */
public interface AdminService {
    void addAdmin(Admin admin);
    Admin getAdminByEmail(String email);
    List<Admin> getAllAdmin();
}
