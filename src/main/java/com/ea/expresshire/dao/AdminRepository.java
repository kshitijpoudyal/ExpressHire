package com.ea.expresshire.dao;

import com.ea.expresshire.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by kcp on 8/11/17.
 */
public interface AdminRepository extends JpaRepository<Admin, Long> {
}
