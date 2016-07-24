package com.Forever.model;

import java.util.List;

public class Category {
    private String catid;

    private String name;

    private String descn;

    private List<Profile> plist;
    
    public List<Profile> getPlist() {
		return plist;
	}

	public void setPlist(List<Profile> plist) {
		this.plist = plist;
	}

	public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid == null ? null : catid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescn() {
        return descn;
    }

    public void setDescn(String descn) {
        this.descn = descn == null ? null : descn.trim();
    }
}