package com.pae.maja.pmauser.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pae.maja.pmauser.model.PMAUser;

@Repository
public class PMAUserDAOImp implements PMAUserDAO {

	@Autowired
	SqlSession sqlSession;

	private String ns = "PMAUser.";

	@Override
	public void regi(PMAUser user) {
		// TODO Auto-generated method stub

		sqlSession.insert(ns + "regi", user);
	}

	@Override
	public PMAUser login(PMAUser user) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns + "login", user);
	}

	@Override
	public Integer idcheck(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns + "idcheck", id);
	}

	@Override
	public PMAUser getInfo(PMAUser user) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns + "getInfo", user);
	}

	@Override
	public void leave(PMAUser user) {
		// TODO Auto-generated method stub
		sqlSession.selectOne(ns + "leave", user);
	}

}
