package com.hungry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hungry.bean.Dishes;
import com.hungry.bean.Dishes_category;
import com.hungry.mapper.DishMapper;

@Service
public class DishServiceImpl implements DishService {
	@Autowired
	private DishMapper dishMapper;
	
//	public void setDishMapper(DishMapper dis) {
//		dishMapper=dis;
//	}
	@Override
	public List<Dishes> getAllList() {
		
		return dishMapper.getAllList();
	}

	@Override
	public Dishes findById(Integer dishes_id) {
		
		return dishMapper.findById(dishes_id);
	}

	@Override
	public List<Dishes> getByType(String dishes_cname) {
		
		return dishMapper.getByType(dishes_cname);
	}

	@Override
	public List<Dishes_category> getAllCategory() {
		
		return dishMapper.getAllCategory();
	}
	
	@Override
	public List<Dishes> findByWord(String word) {
		
		return dishMapper.findByWord(word);
	}
}
