package com.hzit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hzit.bean.Vet;

@Repository
public interface VetDao {

	/**
	 * 添加医生
	 * 
	 * @param vet
	 * @return
	 */
	int saveVet(Vet vet);

	/**
	 * 添加特长
	 * 
	 * @param list
	 * @return
	 */
	int saveVetSpec(List<Integer> list);

	/**
	 * 查询所有的医生及特长信息
	 * 
	 * @return
	 */
	List<Vet> findVetList();

}
