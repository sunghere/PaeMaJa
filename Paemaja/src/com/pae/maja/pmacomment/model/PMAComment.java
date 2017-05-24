package com.pae.maja.pmacomment.model;

import java.io.Serializable;

public class PMAComment implements Serializable{
	private int seq;
	private int pseq;
	private int idseq;
	private String wdate;
	private float score;
	private int replyNum;
	private String img;
	private int del=1;
	private String content;
	private String id;
	public PMAComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PMAComment(int seq, int pseq, int idseq, String wdate, float score, int replyNum, String img, int del,
			String content) {
		super();
		this.seq = seq;
		this.pseq = pseq;
		this.idseq = idseq;
		this.wdate = wdate;
		this.score = score;
		this.replyNum = replyNum;
		this.img = img;
		this.del = del;
		this.content = content;
	}
	@Override
	public String toString() {
		return "PMAComment [seq=" + seq + ", pseq=" + pseq + ", idseq=" + idseq + ", wdate=" + wdate + ", score="
				+ score + ", replyNum=" + replyNum + ", img=" + img + ", del=" + del + ", content=" + content + ", id="
				+ id + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getIdseq() {
		return idseq;
	}
	public void setIdseq(int idseq) {
		this.idseq = idseq;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public int getReplyNum() {
		return replyNum;
	}
	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
