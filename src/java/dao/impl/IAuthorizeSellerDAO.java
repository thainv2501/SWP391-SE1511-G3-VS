/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import entity.Seller;
import java.util.List;

/**
 * interface dùng cho Authorize Seller
 * <p>Bug:
 * @author nqt26
 */
public interface IAuthorizeSellerdao {
    public List<Seller> getInactiveSellerAccount();
    public void denySellerAccount(String username);
}
