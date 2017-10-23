package com.tm.pojo;

public class User {
    private Integer adminId;

    private String adminName;

    private String adminPwd;

    
    public User() {
		super();
	}

	public User(String username, String password) {
		// TODO Auto-generated constructor stub
	}

	public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd == null ? null : adminPwd.trim();
    }

	@Override
	public String toString() {
		return "User [adminId=" + adminId + ", adminName=" + adminName
				+ ", adminPwd=" + adminPwd + "]";
	}
    
    
}