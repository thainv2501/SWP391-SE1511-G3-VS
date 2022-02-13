/*
 * Copyright(C) 2005, G3-VS.
 * Vehicle Store
 *  
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2018-09-10      1.0                 MinhLH           First Implement
 */
package dao.impl;

import entity.Product;
import java.util.List;

/**
 *
 * @author Acer
 */
public interface IManageProductDao {
     public List<Product> getProductBySellerid(int sid);
}
