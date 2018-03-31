package com.hzit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hzit.bean.Spec;

@Repository
public interface SpecDao {

	List<Spec> findSpecList();

}
