package com.ea.expresshire.services.admin;

import com.ea.expresshire.model.Admin;

import java.util.List;

/**
 * Created by kcp on 8/11/17.
 */
public interface AdminService {
    public void addAdmin(Admin admin);
    public List<Admin> getAdmin();
}
