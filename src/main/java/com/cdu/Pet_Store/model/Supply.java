package com.cdu.Pet_Store.model;

public class Supply {
    String supplyId;
    String supplyType;
    String supplyName;
    String supplyDate;
    String supplyAddress;
    String supplyPrice;
    String supplyInventory;

    public Supply(String supplyId, String supplyType, String supplyName, String supplyDate, String supplyAddress, String supplyPrice, String supplyInventory) {
        this.supplyId = supplyId;
        this.supplyType = supplyType;
        this.supplyName = supplyName;
        this.supplyDate = supplyDate;
        this.supplyAddress = supplyAddress;
        this.supplyPrice = supplyPrice;
        this.supplyInventory = supplyInventory;
    }

    public String getSupplyId() {
        return supplyId;
    }

    public String getSupplyType() {
        return supplyType;
    }

    public String getSupplyName() {
        return supplyName;
    }

    public String getSupplyDate() {
        return supplyDate;
    }

    public String getSupplyAddress() {
        return supplyAddress;
    }

    public String getSupplyPrice() {
        return supplyPrice;
    }

    public String getSupplyInventory() {
        return supplyInventory;
    }
}
