package com.pae.maja.pmashop.model;

import java.io.Serializable;

public class PMAShopDTO	implements Serializable {
	private int seq;
	private String name;
	private String addr;
	private String tel;
	private String category;
	private String menu;
	private float xpos;
	private float ypos;
	private String imgFile;
	private int del;
	private String search;
	public PMAShopDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PMAShopDTO(int seq, String name, String addr, String tel, String category, String menu, float xpos,
			float ypos, String imgFile, int del, String search) {
		super();
		this.seq = seq;
		this.name = name;
		this.addr = addr;
		this.tel = tel;
		this.category = category;
		this.menu = menu;
		this.xpos = xpos;
		this.ypos = ypos;
		this.imgFile = imgFile;
		this.del = del;
		this.search = search;
	}
	public PMAShopDTO(int seq, String name, String addr, String tel, String category, String menu, float xpos,
			float ypos, String imgFile, int del) {
		super();
		this.seq = seq;
		this.name = name;
		this.addr = addr;
		this.tel = tel;
		this.category = category;
		this.menu = menu;
		this.xpos = xpos;
		this.ypos = ypos;
		this.imgFile = imgFile;
		this.del = del;
	}
	public PMAShopDTO(int seq, String name, String addr, String tel, String category, String menu, float xpos,
			float ypos, String imgFile) {
		super();
		this.seq = seq;
		this.name = name;
		this.addr = addr;
		this.tel = tel;
		this.category = category;
		this.menu = menu;
		this.xpos = xpos;
		this.ypos = ypos;
		this.imgFile = imgFile;
	}
	@Override
	public String toString() {
		return "PMAShopDTO [seq=" + seq + ", name=" + name + ", addr=" + addr + ", tel=" + tel + ", category="
				+ category + ", menu=" + menu + ", xpos=" + xpos + ", ypos=" + ypos + ", imgFile=" + imgFile + ", del="
				+ del + ", search=" + search + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public float getXpos() {
		return xpos;
	}
	public void setXpos(float xpos) {
		this.xpos = xpos;
	}
	public float getYpos() {
		return ypos;
	}
	public void setYpos(float ypos) {
		this.ypos = ypos;
	}
	public String getImgFile() {
		return imgFile;
	}
	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
}
