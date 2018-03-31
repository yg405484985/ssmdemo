package com.hzit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hzit.bean.Emp;
import com.hzit.service.IEmpService;

@Controller
public class EmpController {

	// 引入service
	@Autowired
	private IEmpService empService;

	@RequestMapping(value = "findEmp")
	public ModelAndView findEmp() {

		ModelAndView modelAndView = new ModelAndView("EmpList");
		List<Emp> list = empService.findEmpService();
		modelAndView.addObject("empList", list);
		return modelAndView;

	}

}
