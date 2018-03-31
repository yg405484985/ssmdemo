package com.hzit.controller;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder.In;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hzit.bean.Vet;
import com.hzit.service.IVetService;

@Controller
public class VetController {

	Logger logger = Logger.getLogger(VetController.class);
	@Autowired
	private IVetService vetService;

	@RequestMapping(value = "saveVet", method = RequestMethod.POST)
	public String saveVet(String vetName, String vetPhone, String[] specId) {

		Vet vet = new Vet();
		vet.setVetName(vetName);
		vet.setVetPhone(vetPhone);

		ArrayList<Integer> arrayList = new ArrayList<Integer>();

		for (String string : specId) {

			arrayList.add(Integer.parseInt(string));
		}
		int row = vetService.addService(vet, arrayList);

		// ModelAndView modelAndView = new ModelAndView();

		logger.debug(row);

		return "redirect:findVet";
	}

	@RequestMapping(value = "findVet", method = RequestMethod.GET)
	public ModelAndView findVet() {
		List<Vet> vetList = vetService.findVetList();

		ModelAndView modelAndView = new ModelAndView("VetList");
		modelAndView.addObject("vetList", vetList);

		return modelAndView;
	}

}
