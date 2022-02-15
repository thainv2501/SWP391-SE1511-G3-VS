/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-13      1.0                 TungNQ           Add Method
 */
package dao.impl;

import entity.Account;
import entity.Role;
import java.util.List;

/**
 * Chứa lớp interface của quản lí tài khoản người dùng
 * @author nqt26
 */
public interface IManageAccountDAO {
    public Account searchAccount(int roleId,int id);
    public void activeAccount(String username);
    public void deactiveAccount(String username);
}
