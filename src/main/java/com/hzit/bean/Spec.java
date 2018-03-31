package com.hzit.bean;

public class Spec {

	private int specId;
	private String specName;

	public int getSpecId() {
		return specId;
	}

	public void setSpecId(int specId) {
		this.specId = specId;
	}

	public String getSpecName() {
		return specName;
	}

	public void setSpecName(String specName) {
		this.specName = specName;
	}

	@Override
	public String toString() {
		return "Spec [specId=" + specId + ", specName=" + specName + "]";
	}

}
