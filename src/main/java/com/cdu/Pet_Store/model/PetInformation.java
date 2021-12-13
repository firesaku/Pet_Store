package com.cdu.Pet_Store.model;

public class PetInformation {
    String petId;
    String petTypeId;
    String petTypeName;
    String petBirth;
    String petAge;
    String petWeight;
    String petPrice;
    String Remark;

    public PetInformation(String petId, String petTypeId, String petTypeName, String petBirth, String petAge, String petWeight, String petPrice, String remark) {
        this.petId = petId;
        this.petTypeId = petTypeId;
        this.petTypeName = petTypeName;
        this.petBirth = petBirth;
        this.petAge = petAge;
        this.petWeight = petWeight;
        this.petPrice = petPrice;
        Remark = remark;
    }

    public String getPetId() {
        return petId;
    }

    public String getPetTypeId() {
        return petTypeId;
    }

    public String getPetTypeName() {
        return petTypeName;
    }

    public String getPetBirth() {
        return petBirth;
    }

    public String getPetAge() {
        return petAge;
    }

    public String getPetWeight() {
        return petWeight;
    }

    public String getPetPrice() {
        return petPrice;
    }

    public String getRemark() {
        return Remark;
    }
}
