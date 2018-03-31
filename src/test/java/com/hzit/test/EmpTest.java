package com.hzit.test;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hzit.bean.Emp;
import com.hzit.bean.Vet;
import com.hzit.service.IEmpService;
import com.hzit.service.impl.EmpServiceImpl;
import com.hzit.service.impl.VetServiceImpl;

public class EmpTest {

	// 创建log4j
	private Logger logger = Logger.getLogger(EmpTest.class);

	@Test
	public void test1() {

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		IEmpService empServiceImpl = context.getBean(EmpServiceImpl.class);
		List<Emp> list = empServiceImpl.findEmpService();
		logger.debug(list);

	}

	@Test
	public void test2() {

	}

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		VetServiceImpl empServiceImpl = context.getBean(VetServiceImpl.class);
		Vet vet = new Vet();
		vet.setVetId(6);
		vet.setVetName("小王3");
		vet.setVetPhone("12345");
		
		ArrayList<Integer> arrayList = new ArrayList<Integer>();
		arrayList.add(1);
		arrayList.add(2);
		arrayList.add(3);
		int addService = empServiceImpl.addService(vet, arrayList);
		System.out.println(addService);

	}
}
