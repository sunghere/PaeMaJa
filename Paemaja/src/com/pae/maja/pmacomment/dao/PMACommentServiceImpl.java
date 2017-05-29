package com.pae.maja.pmacomment.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pae.maja.pmacomment.model.PMAComment;
@Service
public class PMACommentServiceImpl implements PMACommentService {

	@Autowired
	private PMACommentDAO pMACommentDAO; 
	
	@Override
	@Transactional
	public void writeComment(PMAComment pcomt) throws Exception {
		pMACommentDAO.writeComment(pcomt);
	}

	@Override
	@Transactional
	public void deleteComment(PMAComment pcomt) throws Exception {
		pMACommentDAO.deleteComment(pcomt);
	}

	@Override
	@Transactional
	public void updateComment(PMAComment pcomt) throws Exception {
		pMACommentDAO.updateComment(pcomt);
	}

	@Override
	@Transactional(readOnly=true)
	public List<PMAComment> getCommentList(int pseq) throws Exception {
		return pMACommentDAO.getCommentList(pseq);
	}

	@Override
	public List<PMAComment> getAllCommentList() throws Exception {
		return pMACommentDAO.getAllCommentList();
	}

	@Override
	public List<PMAComment> getMYComment(int idseq) {
		return pMACommentDAO.getMYComment(idseq);
	}

}
