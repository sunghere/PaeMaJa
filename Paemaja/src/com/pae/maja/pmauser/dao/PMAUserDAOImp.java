package com.pae.maja.pmauser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public Integer nickcheck(String nick) {
		return sqlSession.selectOne(ns + "nickcheck", nick);
	}

	@Override
	@Transactional(readOnly=true)
	public List<PMAUser> getAllInfo() {
		return sqlSession.selectList(ns+"getAllInfo");
	}

	@Override
	public void updateUserGrade(PMAUser user) {
		sqlSession.update(ns+"updateUserGrade",user);
	}

}
