/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import entity.Account;
import entity.Role;
import java.util.List;

/**
 *
 * @author nqt26
 */
public interface IManageAccountdao {
    public Account searchAccount(int roleId,int id);
    public void activeAccount(String username);
    public void deactiveAccount(String username);
}
