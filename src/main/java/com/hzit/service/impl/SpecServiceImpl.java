package com.hzit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.bean.Spec;
import com.hzit.dao.SpecDao;
import com.hzit.service.ISpecService;

@Service
public class SpecServiceImpl implements ISpecService {

	@Autowired
	private SpecDao specDao;

	@Override
	public List<Spec> findSpecListService() {

		return specDao.findSpecList();
	}

}
