package com.jkxy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jkxy.dao.QueryDao;
import com.jkxy.entity.Poets;

@Service
public class QueryService {
	@Resource
	QueryDao dao;

	/*
	 * 通过诗人分页查询
	 */
	public List<Poets> queryByPoet(String query_context, int start, int cnt) {
		List<Poets> poets = dao.selectByPoet(query_context, start, cnt);
		return poets;
	}/*
		 * 通过诗词名查询
		 */

	public List<Poets> queryByTitle(String query_context) {
		List<Poets> poets = dao.selectByTitle(query_context);
		return poets;
	}

	/*
	 * 通过诗词名句查询
	 */
	public List<Poets> queryByContent(String query_context) {
		List<Poets> poets = dao.selectByContent(query_context);
		return poets;
	}

	/*
	 * 获取某诗人的诗词总数
	 */
	public int getRowCountByPoet(String queryContext) {
		return dao.getRowCountByPoet(queryContext);
	}

}
