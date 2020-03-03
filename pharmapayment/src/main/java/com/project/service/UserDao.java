package com.project.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.UserBean;

public interface UserDao extends JpaRepository<UserBean, String>{

}
