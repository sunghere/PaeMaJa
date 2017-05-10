package com.pae.maja.pmauser.model;

public class PMAUser {

	private int seq;
	private String id;
	private int auth;
	private String nickname;
	private String pwd;
	private String favorite;
	private int del = 0;

	@Override
	public String toString() {
		return "PMAUser [seq=" + seq + ", id=" + id + ", auth=" + auth + ", nickname=" + nickname + ", pwd=" + pwd
				+ ", favorite=" + favorite + ", del=" + del + "]";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

}
