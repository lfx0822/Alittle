package com.hungry.mapper;

import java.util.List;

import com.hungry.bean.Dishes;
import com.hungry.bean.Dishes_category;

public interface DishMapper {
	//返回所有菜品
	List<Dishes> getAllList();
	//根据ID查询
	Dishes findById(Integer dishes_id);
	//根据菜品类型查询
	List<Dishes> getByType(String dishes_cname);
	//菜品分类
	List<Dishes_category> getAllCategory();
	//搜索查找
	List<Dishes> findByWord(String word);
}
