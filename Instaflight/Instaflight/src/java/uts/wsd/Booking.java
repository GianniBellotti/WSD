/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

/**
 *
 * @author Gianni
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class Booking implements Serializable {
    
    private String name;
    private String email;
    private int customerID;
    private int flightID;
            
    public Booking() {
		super();
	}
    
    public Booking(String name, String email, int customerID, int flightID) {
        this.name = name;
        this.email = email;
        this.customerID = customerID;
        this.flightID = flightID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }
}
