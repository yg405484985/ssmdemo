package com.hzit.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Pet {

	
	private int petId;
	private String petName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date petBirthDate;
	private PetType petType;
	private PetOwner petOwner;

	public int getPetId() {
		return petId;
	}

	public void setPetId(int petId) {
		this.petId = petId;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public Date getPetBirthDate() {
		return petBirthDate;
	}

	public void setPetBirthDate(Date petBirthDate) {
		this.petBirthDate = petBirthDate;
	}

	public PetType getPetType() {
		return petType;
	}

	public void setPetType(PetType petType) {
		this.petType = petType;
	}

	public PetOwner getPetOwner() {
		return petOwner;
	}

	public void setPetOwner(PetOwner petOwner) {
		this.petOwner = petOwner;
	}

}
