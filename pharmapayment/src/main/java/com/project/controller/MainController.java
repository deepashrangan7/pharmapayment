package com.project.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.UserBean;
import com.project.service.AdminDao;
import com.project.service.AdminFunction;
import com.project.service.UserDao;

@Controller
public class MainController {
	@Autowired
	AdminDao adminDao;
	@Autowired
	UserDao userDao;
	@Autowired
	AdminFunction adminFunction;
	@RequestMapping("/")
	public String chooseRole() {
		String page = "choose";

		return page;

	}

	@RequestMapping("/log/{role}")
	public String login(@PathVariable("role") String role, HttpSession session) {
		String page = "login";

		session.setAttribute("role", role);
		System.out.println(role);
		return page;

	}

	@RequestMapping("/sign")
	public String signup(@ModelAttribute("signup") UserBean ub) {
		String page = "signup";
		return page;
	}

	@RequestMapping("/home")
	public String home(@Valid @ModelAttribute("signup") UserBean userBean, BindingResult br, HttpSession session) {
		String page = "home";
		if (br.hasErrors()) {
			// System.out.println(userBean);
			return "signup";

		}
		String role = (String) session.getAttribute("role");
		if (role.equals("ad")) {
			adminDao.save(adminFunction.convert(userBean));
		} else {
			userDao.save(userBean);
		}
		return page;
	}

}
