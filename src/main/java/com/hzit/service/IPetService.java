package com.hzit.service;

import java.util.List;

import com.hzit.bean.Pet;
import com.hzit.bean.PetOwner;
import com.hzit.bean.PetType;

public interface IPetService {

	/**
	 * 查询所有的宠物的类型
	 * 
	 * @return
	 */
	List<PetType> findPetType();

	/**
	 * 查询所有的宠物的主人信息
	 * 
	 * @return
	 */
	List<PetOwner> findPetOwner();

	/**
	 * 添加指定的宠物
	 * 
	 * @param pet
	 * @return
	 */
	int addPet(Pet pet);

	/**
	 * 查询所有的宠物信息
	 * 
	 * @return
	 */
	List<Pet> findPetList();

	/**
	 * 通过id删除
	 * 
	 * @param petId
	 */
	void delPetByIds(String[] petId);

	/**
	 * 根据ID查询
	 */
	Pet findPetById(int petId);

	/**
	 * 修改 
	 * @param pet
	 * @return
	 */
	int updatePetById(Pet pet);

}
