package com.hzit.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hzit.bean.Pet;
import com.hzit.bean.PetOwner;
import com.hzit.bean.PetType;
import com.hzit.service.IPetService;

@Controller
public class PetController {

	// 引入petService层
	@Autowired
	private IPetService petService;

	@RequestMapping(value = "findPetType")
	@ResponseBody
	public Object findPetTypeList() {
		List<PetType> list = petService.findPetType();

		// 直接返回 @ResponseBody 转成json格式的数据

		return list;

	}

	@RequestMapping(value = "findPetOwner")
	@ResponseBody
	public Object findPetOwnerList() {
		List<PetOwner> list = petService.findPetOwner();
		// 直接返回 @ResponseBody 转成json格式的数据
		return list;
	}

	/**
	 * 添加 添加之后跳转到查询
	 * 
	 * @param pet
	 * @return
	 */
	@RequestMapping(value = "addPet", method = RequestMethod.POST)
	public String addPet(Pet pet) {

		// petBirthDate是日期类型(在属性上面添加注解)
		// pet中的petType是一个对象 在页面上面处理
		petService.addPet(pet);

		return "redirect:findPet";
	}

	/**
	 * 查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "findPet", method = RequestMethod.GET)
	public ModelAndView findPet(@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "pageSize", defaultValue = "3") int pageSize) {
		// 设置分页 参数一：页码 参数二:大小
		PageHelper.startPage(page, pageSize);

		// PageInfo：存放的是对应的分页相关的信息 总条数
		List<Pet> list = petService.findPetList();
		PageInfo pageInfo = new PageInfo(list);
		// 测试PageInfo全部属性
		// PageInfo包含了非常全面的分页属性

		System.out.println("当前所在页码:" + pageInfo.getPageNum());
		System.out.println("每页的大小:" + pageInfo.getPageSize());
		System.out.println("起始行数:" + pageInfo.getStartRow());
		System.out.println("结束行数:" + pageInfo.getEndRow());
		System.out.println("总的条数：" + pageInfo.getTotal());
		System.out.println("总的页数:" + pageInfo.getPages());
		System.out.println("获取第一页：" + pageInfo.getFirstPage());
		System.out.println("获取最后一页" + pageInfo.getLastPage());
		System.out.println("是否是第一页:" + pageInfo.isIsFirstPage());
		System.out.println("是否是最后一页:" + pageInfo.isIsLastPage());
		System.out.println("是否有上一页" + pageInfo.isHasPreviousPage());
		System.out.println("是否有下一页" + pageInfo.isHasNextPage());

		ModelAndView mav = new ModelAndView("PetList");
		mav.addObject("petList", list);
		// 把pageInfo存到域里面
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	/**
	 * 删除
	 * 
	 * @return
	 */
	@RequestMapping(value = "delPetById", method = RequestMethod.GET)
	@ResponseBody
	public int delPet(String[] petId) {

		petService.delPetByIds(petId);

		return 1;
	}

	/**
	 * 查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "findPetById", method = RequestMethod.GET)
	@ResponseBody
	public Object findPetById(int petId) {

		Pet pet = petService.findPetById(petId);
		return pet;
	}

	@RequestMapping(value = "updatePet", method = RequestMethod.GET)
	public String updatePet(int showPetId, String showPetName, long showPetBirth, int showPetType, int showPetOwner) {

		Pet pet = new Pet();

		pet.setPetId(showPetId);
		pet.setPetName(showPetName);
		pet.setPetBirthDate(new Date(showPetBirth));
		PetType petType = new PetType();
		petType.setTypeId(showPetType);
		pet.setPetType(petType);

		PetOwner petOwner = new PetOwner();
		petOwner.setOwnerId(showPetOwner);
		pet.setPetOwner(petOwner);

		petService.updatePetById(pet);

		return "redirect:findPet";
	}

}
