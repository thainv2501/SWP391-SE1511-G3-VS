/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import entity.Product;
import java.util.Vector;

/**
 *
 * @author taola
 */
public interface IProductDao {
    public Vector<Product> getAllProducts(); 
    public Vector<Product> getAllProductsByVehicleTypeId(int vtid) ;
}
