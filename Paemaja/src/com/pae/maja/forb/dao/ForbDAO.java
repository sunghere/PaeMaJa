package com.pae.maja.forb.dao;

import com.pae.maja.forb.model.Forb;

public interface ForbDAO {
	void addForb(Forb forb);
	Forb getForb(Forb forb);
	void modifyForb(Forb forb);
	void deleteForb(Forb forb);
	void infoChange(Forb forb);
}
