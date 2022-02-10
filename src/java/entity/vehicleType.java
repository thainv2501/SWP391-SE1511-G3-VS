/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author taola
 */
public class vehicleType {
    private int vehicleTypeId;
    private String vehicleTypeName;

    public vehicleType() {
    }

    public vehicleType(int vehicleTypeId, String vehicleTypeName) {
        this.vehicleTypeId = vehicleTypeId;
        this.vehicleTypeName = vehicleTypeName;
    }

    public int getVehicleTypeId() {
        return vehicleTypeId;
    }

    public void setVehicleTypeId(int vehicleTypeId) {
        this.vehicleTypeId = vehicleTypeId;
    }

    public String getVehicleTypeName() {
        return vehicleTypeName;
    }

    public void setVehicleTypeName(String vehicleTypeName) {
        this.vehicleTypeName = vehicleTypeName;
    }

    @Override
    public String toString() {
        return "vehicleType{" + "vehicleTypeId=" + vehicleTypeId + ", vehicleTypeName=" + vehicleTypeName + '}';
    }
    
    
}
