package com.pae.maja.pmauser.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pae.maja.pmauser.model.PMAUser;

@Service
public class PMAUserServiceImpl implements PMAUserService {

	@Autowired
	private PMAUserDAO pMAUserDAO;

	@Override
	public void regi(PMAUser user) {
		// TODO Auto-generated method stub
		pMAUserDAO.regi(user);
	}

	@Override
	public PMAUser login(PMAUser user) {
		// TODO Auto-generated method stub
		return pMAUserDAO.login(user);
	}

	@Override
	public Integer idcheck(String id) {
		// TODO Auto-generated method stub
		return pMAUserDAO.idcheck(id);
	}

	@Override
	public PMAUser getInfo(PMAUser user) {
		// TODO Auto-generated method stub
		return pMAUserDAO.getInfo(user);
	}

	@Override
	public void leave(PMAUser user) {
		// TODO Auto-generated method stub
		pMAUserDAO.leave(user);
	}

}
