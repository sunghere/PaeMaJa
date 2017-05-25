package com.pae.maja.forb.model;

import java.io.Serializable;

// com.pae.maja.forb.model

public class Forb implements Serializable{
	private int seq;
	private int idseq;
	private int forbs=0; 
	/*
	 * 
	 * 0 : 미체크
	 * 1 : 선호, Favorite
	 * 2 : 비선호, BlackList
	 * 
	 * */
	private int shopseq;
	public Forb(int seq, int idseq, int forbs, int shopseq) {
		super();
		this.seq = seq;
		this.idseq = idseq;
		this.forbs = forbs;
		this.shopseq = shopseq;
	}
	public Forb() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Forb [seq=" + seq + ", idseq=" + idseq + ", forbs=" + forbs + ", shopseq=" + shopseq + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getIdseq() {
		return idseq;
	}
	public void setIdseq(int idseq) {
		this.idseq = idseq;
	}
	public int getForbs() {
		return forbs;
	}
	public void setForbs(int forbs) {
		this.forbs = forbs;
	}
	public int getShopseq() {
		return shopseq;
	}
	public void setShopseq(int shopseq) {
		this.shopseq = shopseq;
	}
	
}
