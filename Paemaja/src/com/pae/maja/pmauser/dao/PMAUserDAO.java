package com.pae.maja.pmauser.dao;

import java.util.List;

import com.pae.maja.pmauser.model.PMAUser;

public interface PMAUserDAO {

	public void regi(PMAUser user);
	/* 회원가입 */

	public PMAUser login(PMAUser user);
	/* 로그인 */

	public Integer idcheck(String id);
	/* 중복확인 */

	public PMAUser getInfo(PMAUser user);
	/* 하나 Select */

	public void leave(PMAUser user);
	
	public Integer nickcheck(String nick);
	/*닉네임중복확인*/
	
	public List<PMAUser> getAllInfo();
}
