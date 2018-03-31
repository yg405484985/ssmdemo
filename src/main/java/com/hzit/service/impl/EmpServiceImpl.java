package com.hzit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.bean.Emp;
import com.hzit.dao.EmpDao;
import com.hzit.service.IEmpService;

@Service
public class EmpServiceImpl implements IEmpService {

	// 引入dao
	@Autowired
	private EmpDao empDao;

	@Override
	public List<Emp> findEmpService() {
		List<Emp> list = empDao.findEmpList();
		// 处理业务....
		return list;
	}

}
