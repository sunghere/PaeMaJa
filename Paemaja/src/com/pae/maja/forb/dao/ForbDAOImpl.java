package com.pae.maja.forb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pae.maja.forb.model.Forb;
@Repository
public class ForbDAOImpl implements ForbDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	String ns="Forb.";
	
	@Override
	public void addForb(Forb forb) {
		sqlSession.insert(ns+"addForb",forb);
	}

	@Override
	public Forb getForb(int pseq) {
		return sqlSession.selectOne(ns+"getForb",pseq);

	}

	@Override
	public void modifyForb(Forb forb) {
		sqlSession.update(ns+"modifyForb",forb);
	}

}
