package com.hzit.service.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.hzit.bean.Vet;
import com.hzit.dao.VetDao;
import com.hzit.service.IVetService;

@Service
@Transactional
public class VetServiceImpl implements IVetService {

	@Autowired
	private VetDao vetDao;

	@Override
	public int addService(Vet vet, List<Integer> list) {
		int saveVet = vetDao.saveVet(vet);
		int saveVetSpec = vetDao.saveVetSpec(list);
		return saveVet;
	}

	@Override
	public List<Vet> findVetList() {
		List<Vet> findVetList = vetDao.findVetList();

		return findVetList;
	}

}
