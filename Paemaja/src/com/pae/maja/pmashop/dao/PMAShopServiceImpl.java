package com.pae.maja.pmashop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pae.maja.pmashop.model.PMAShopDTO;
@Service
public class PMAShopServiceImpl implements PMAShopService {

	@Autowired
	private PMAShopDAO pMAShopDAO;
	
	
	@Override
	@Transactional(readOnly=true)
	public List<PMAShopDTO> getShopList() throws Exception {
		return pMAShopDAO.getShopList();
	}

	@Override
	@Transactional
	public void writeShop(PMAShopDTO dto) throws Exception {
		pMAShopDAO.writeShop(dto);
	}

	@Override
	@Transactional(readOnly=true)
	public PMAShopDTO getShop(int seq) throws Exception {
		return pMAShopDAO.getShop(seq);
	}

	@Override
	@Transactional(readOnly=true)
	public List<PMAShopDTO> searchShopList(String search) throws Exception {
		return pMAShopDAO.searchShopList(search);
	}

	@Override
	@Transactional(readOnly=true)
	public List<PMAShopDTO> searchShopListRegion(String search) throws Exception {
		return pMAShopDAO.searchShopListRegion(search);
	}

	@Override
	@Transactional
	public void updateShop(int seq) throws Exception {
		pMAShopDAO.updateShop(seq);
	}

	@Override
	@Transactional
	public void deleteShop(int seq) throws Exception {
		pMAShopDAO.deleteShop(seq);
	}

}
