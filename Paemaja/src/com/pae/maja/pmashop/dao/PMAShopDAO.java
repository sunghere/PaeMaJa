package com.pae.maja.pmashop.dao;

import java.util.List;

import com.pae.maja.pmashop.model.PMAShopDTO;

public interface PMAShopDAO {
	public List<PMAShopDTO> getShopList() throws Exception;
	public void writeShop(PMAShopDTO dto) throws Exception;
	public PMAShopDTO getShop(int seq) throws Exception;
	public List<PMAShopDTO> searchShopList(String search) throws Exception;
	public List<PMAShopDTO> searchShopListRegion(String search) throws Exception;
	public void updateShop(int seq) throws Exception;
	public void deleteShop(int seq) throws Exception;
}
