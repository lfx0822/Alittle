package com.hungry.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;

import com.hungry.bean.Dishes;
import com.hungry.bean.Dishes_category;
import com.hungry.service.DishServiceImpl;


@Controller
public class DishController {
	
	@Autowired
	private DishServiceImpl dishServiceimpl;
	
	@RequestMapping("/showAll") //展示所有菜品
	public String showAll(Model model) {
		
		List<Dishes> list=dishServiceimpl.getAllList();
		List <Dishes_category> category_list=dishServiceimpl.getAllCategory();
		model.addAttribute("category_list", category_list);	
//		for (Dishes dish : list) {
//			System.out.println("list = " + dish);
//		}		
		model.addAttribute("list", list);	
		return "list";
	}
	@RequestMapping("/showType") //展示分类菜品
	public String showType(String dishes_cname,Model model) {
		List<Dishes> list=dishServiceimpl.getByType(dishes_cname);
		model.addAttribute("list", list);	
		return "list";
	}
	@RequestMapping("/showDish")//菜品详情
	public String showDish(Integer dishes_id,Model model) {
		Dishes dish=dishServiceimpl.findById(dishes_id);
		model.addAttribute("dish", dish);	
		return "show";
	}
	
	//@RequestMapping("/showAllType")//展示分类
	public void showAllCategory(Model model) {
		List <Dishes_category> category_list=dishServiceimpl.getAllCategory();
		model.addAttribute("category_list", category_list);	
		//return "showCategory";
	}
	
	@RequestMapping(value="/findByWord",method=RequestMethod.POST)//搜索菜品
	public String findByWord(String word,Model model) {
		List<Dishes> list=dishServiceimpl.findByWord(word);
		model.addAttribute("list", list);	
		return "list";
	}


}
