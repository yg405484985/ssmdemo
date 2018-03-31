package com.hzit.bean;

import java.util.List;

public class Vet {

	private int vetId;
	private String vetName;
	private String vetPhone;

	private List<Spec> specList;

	public int getVetId() {
		return vetId;
	}

	public void setVetId(int vetId) {
		this.vetId = vetId;
	}

	public String getVetName() {
		return vetName;
	}

	public void setVetName(String vetName) {
		this.vetName = vetName;
	}

	public String getVetPhone() {
		return vetPhone;
	}

	public void setVetPhone(String vetPhone) {
		this.vetPhone = vetPhone;
	}

	public List<Spec> getSpecList() {
		return specList;
	}

	public void setSpecList(List<Spec> specList) {
		this.specList = specList;
	}

}
