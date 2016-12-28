package com.jkxy.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jkxy.common.PageParam;
import com.jkxy.entity.Poets;

@Repository
public interface QueryDao {
	/*
	 * 通过诗人分页查询
	 */
	List<Poets> selectByPoet(String query_context, int start, int cnt);

	/*
	 * 通过诗词名查询
	 */
	List<Poets> selectByTitle(String query_context);

	/*
	 * 通过诗词名句查询
	 */
	List<Poets> selectByContent(String query_context);

	/*
	 * 获取某诗人的诗词总数
	 */
	int getRowCountByPoet(String query_context);
}
