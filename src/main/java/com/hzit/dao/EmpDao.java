package com.hzit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hzit.bean.Emp;

@Repository
public interface EmpDao {

	/**
	 * 查询所有的emp
	 * 
	 * @return
	 */
	List<Emp> findEmpList();

}
