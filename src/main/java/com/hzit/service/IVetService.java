package com.hzit.service;

import java.util.List;

import com.hzit.bean.Vet;

public interface IVetService {

	/**
	 * 增强一个医生
	 * 
	 * @param vet
	 *            医生的信息
	 * @param list
	 *            对应特长的Id
	 * @return
	 */
	int addService(Vet vet, List<Integer> list);

	/**
	 * 查询医生信息
	 * 
	 * @return
	 */
	List<Vet> findVetList();
}
