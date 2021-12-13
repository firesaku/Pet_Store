package com.cdu.Pet_Store.model;

public class OrderInfo {
    String Order_Id;
    String Supply_Name;
    String Order_Num;
    String Order_Price;
    String Order_MakeTime;
    String Buyer_Id;
    String Remark;

    public OrderInfo(String order_Id, String supply_Name, String order_Num, String order_Price, String order_MakeTime, String buyer_Id, String remark) {
        Order_Id = order_Id;
        Supply_Name = supply_Name;
        Order_Num = order_Num;
        Order_Price = order_Price;
        Order_MakeTime = order_MakeTime;
        Buyer_Id = buyer_Id;
        Remark = remark;
    }

    public String getOrder_Id() {
        return Order_Id;
    }

    public String getSupply_Name() {
        return Supply_Name;
    }

    public String getOrder_Num() {
        return Order_Num;
    }

    public String getOrder_Price() {
        return Order_Price;
    }

    public String getOrder_MakeTime() {
        return Order_MakeTime;
    }

    public String getBuyer_Id() {
        return Buyer_Id;
    }

    public String getRemark() {
        return Remark;
    }
}
