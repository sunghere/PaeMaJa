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
	public Forb getForb(int pseq) {
		return forbDAO.getForb(pseq);
	}

	@Override
	@Transactional
	public void modifyForb(Forb forb) {
		forbDAO.modifyForb(forb);
	}

}
