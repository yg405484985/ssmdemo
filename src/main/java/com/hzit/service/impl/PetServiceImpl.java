package com.hzit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hzit.bean.Pet;
import com.hzit.bean.PetOwner;
import com.hzit.bean.PetType;
import com.hzit.dao.PetDao;
import com.hzit.service.IPetService;

@Service
public class PetServiceImpl implements IPetService {

	// 引入 petDao
	@Autowired
	private PetDao petDao;

	@Override
	public List<PetType> findPetType() {

		return petDao.findPetType();
	}

	@Override
	public List<PetOwner> findPetOwner() {
		// TODO Auto-generated method stub
		return petDao.findPetOwner();
	}

	@Override
	public int addPet(Pet pet) {

		return petDao.addPet(pet);
	}

	@Override
	public List<Pet> findPetList() {
		// TODO Auto-generated method stub
		return petDao.findPetList();
	}

	@Override
	public void delPetByIds(String[] petId) {
		petDao.delPetByIds(petId);

	}

	@Override
	public Pet findPetById(int petId) {
		// TODO Auto-generated method stub
		return petDao.findPetById(petId);
	}

	@Override
	public int updatePetById(Pet pet) {
		// TODO Auto-generated method stub
		return petDao.updatePetById(pet);
	}

}
