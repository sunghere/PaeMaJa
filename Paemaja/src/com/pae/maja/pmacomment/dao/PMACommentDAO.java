package com.pae.maja.pmacomment.dao;

import java.util.List;

import com.pae.maja.pmacomment.model.PMAComment;

public interface PMACommentDAO {
	public void writeComment(PMAComment pcomt) throws Exception;
	public void deleteComment(PMAComment pcomt) throws Exception;
	public void updateComment(PMAComment pcomt) throws Exception;
	public List<PMAComment> getCommentList(int pseq) throws Exception; //
	public List<PMAComment> getAllCommentList() throws Exception;	
	public List<PMAComment> getMYComment(int idseq);
}
