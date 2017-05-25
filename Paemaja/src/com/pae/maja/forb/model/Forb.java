package com.pae.maja.forb.model;

import java.io.Serializable;

// com.pae.maja.forb.model

public class Forb implements Serializable{
	private int seq;
	private int idseq;
	private int fobs=0; 
	/*
	 * 
	 * 0 : 미체크
	 * 1 : 선호, Favorite
	 * 2 : 비선호, BlackList
	 * 
	 * */
	private int shopseq;
	public Forb() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Forb(int seq, int idseq, int fobs, int shopseq) {
		super();
		this.seq = seq;
		this.idseq = idseq;
		this.fobs = fobs;
		this.shopseq = shopseq;
	}
	@Override
	public String toString() {
		return "Forb [seq=" + seq + ", idseq=" + idseq + ", fobs=" + fobs + ", shopseq=" + shopseq + "]";
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
	public int getFobs() {
		return fobs;
	}
	public void setFobs(int fobs) {
		this.fobs = fobs;
	}
	public int getShopseq() {
		return shopseq;
	}
	public void setShopseq(int shopseq) {
		this.shopseq = shopseq;
	}
	
	
}
