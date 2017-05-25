package com.pae.maja.forb.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.pae.maja.forb.model.Forb;

public class ForbServiceImpl implements ForbService {

	@Autowired
	private ForbDAO forbDAO;
	
	@Override
	@Transactional
	public void addForb(Forb forb) {
		forbDAO.addForb(forb);
	}

	@Override
	@Transactional(readOnly=true)
	public void getForb(int pseq) {
		forbDAO.getForb(pseq);
		
	}

	@Override
	@Transactional
	public void modifyForb(Forb forb) {
		forbDAO.modifyForb(forb);
	}

}
