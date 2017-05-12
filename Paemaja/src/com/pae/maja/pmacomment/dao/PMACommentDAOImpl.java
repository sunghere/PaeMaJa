package com.pae.maja.pmacomment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pae.maja.pmacomment.model.PMAComment;
@Repository
public class PMACommentDAOImpl implements PMACommentDAO {

	@Autowired
	private SqlSession sqlSession;
	
	String ns="PMAComment.";
	
	@Override
	public void writeComment(PMAComment pcomt) throws Exception {
		sqlSession.insert(ns+"writeComment", pcomt);
	}

	@Override
	public void deleteComment(PMAComment pcomt) throws Exception {
		sqlSession.update(ns+"deleteComment",pcomt);
	}

	@Override
	public void updateComment(PMAComment pcomt) throws Exception {
		sqlSession.update(ns+"updateComment"+pcomt);
	}

	@Override
	public List<PMAComment> getCommentList(int pseq) throws Exception {
		return sqlSession.selectList(ns+"getCommentList",pseq);
	}

}
