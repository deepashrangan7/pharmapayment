package com.project.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.AdminBean;

public interface AdminDao extends JpaRepository<AdminBean, String>{

}
