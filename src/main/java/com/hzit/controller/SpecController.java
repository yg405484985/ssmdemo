package com.hzit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hzit.bean.Spec;
import com.hzit.service.ISpecService;

@Controller
public class SpecController {

	@Autowired
	private ISpecService specService;

	/**
	 * 使用ajax加载特长信息
	 * 
	 * @return
	 */
	@RequestMapping("/findSpec")
	@ResponseBody
	public Object findSpec() {
		List<Spec> list = specService.findSpecListService();

		return list;
	}

}
