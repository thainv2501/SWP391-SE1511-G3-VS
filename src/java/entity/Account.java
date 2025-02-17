/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-13      1.0                 TungNQ           Add Field
 */
package entity;

/**
 * tạo các trường cho lớp Acoount
 * thêm contrustor và getter,setter
 * <p>Bugs:
 * @author nqt26
 */
public class Account {
    private String username;
    private String password;
    private String status;
    private Role roleId;    

    public Account(String username, String password, String status, Role roleId) {
        this.username = username;
        this.password = password;
        this.status = status;
        this.roleId = roleId;
    }

      
    public Account() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }
    
}
