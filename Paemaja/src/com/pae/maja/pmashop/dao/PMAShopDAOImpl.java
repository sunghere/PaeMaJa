package com.pae.maja.pmashop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pae.maja.pmashop.model.PMAShopDTO;
@Repository
public class PMAShopDAOImpl implements PMAShopDAO {

	@Autowired
	private SqlSession sqlSession;
	
	String ns="PMAShopDTO.";
	
	
	@Override
	public List<PMAShopDTO> getShopList() {
		return sqlSession.selectList(ns+"getShopList");
	}

	@Override
	public void writeShop(PMAShopDTO dto) {
		sqlSession.insert(ns+"writeShop",dto);
	}

	@Override
	public PMAShopDTO getShop(int seq) {
		return sqlSession.selectOne(ns+"getShop",seq);
		
	}

	@Override
	public List<PMAShopDTO> searchShopList(String search) {
		return sqlSession.selectList(ns+"searchShopList",search);
	}

	@Override
	public List<PMAShopDTO> searchShopListRegion(String search) throws Exception {
		return sqlSession.selectList(ns+"searchShopList",search);
	}
	
	@Override
	public void updateShop(int seq) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteShop(int seq) {
		// TODO Auto-generated method stub

	}

	

}
