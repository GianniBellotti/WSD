/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 *
 * @author jiaju
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class Flight {
    private int id;
    private String destination;
    private String departTime;
    private String returnTime;
    private int price;
    private String type;
    private int seat;
    public Flight(){
    };
    public Flight(int id, String destination,String departTime,String returnTime,int price,String type, int seat)
    {
        this.id = id;
        this.destination = destination;
        this.departTime = departTime;
        this.returnTime = returnTime;
        this.price = price;
        this.type = type;
        this.seat = seat;
    };

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public int getId() {
        return id;
    }

    public String getDestination() {
        return destination;
    }

    public String getDepartTime() {
        return departTime;
    }

    public String getReturnTime() {
        return returnTime;
    }

    public int getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }

    public int getSeat() {
        return seat;
    }
    
}
