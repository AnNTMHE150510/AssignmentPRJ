/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class Room {
    private String roomId, dom;
    private int floor, bed, usedBed, price, electricity, water;

    public Room() {
    }

    public Room(String roomId, String dom, int floor, int bed, int usedBed, int price, int electricity, int water) {
        this.roomId = roomId;
        this.dom = dom;
        this.floor = floor;
        this.bed = bed;
        this.usedBed = usedBed;
        this.price = price;
        this.electricity = electricity;
        this.water = water;
    }
    
    
    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getDom() {
        return dom;
    }

    public void setDom(String dom) {
        this.dom = dom;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public int getUsedBed() {
        return usedBed;
    }

    public void setUsedBed(int usedBed) {
        this.usedBed = usedBed;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getElectricity() {
        return electricity;
    }

    public void setElectricity(int electricity) {
        this.electricity = electricity;
    }

    public int getWater() {
        return water;
    }

    public void setWater(int water) {
        this.water = water;
    }
    
    
    
}

