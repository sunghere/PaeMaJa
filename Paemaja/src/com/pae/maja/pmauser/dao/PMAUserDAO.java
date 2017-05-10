package com.pae.maja.pmauser.dao;

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
}
