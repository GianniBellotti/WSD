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
    private int customerid;
    private int flightid;
            
    public Booking() {
		super();
	}
    
    public Booking(String name, String email, int customerID, int flightID) {
        this.name = name;
        this.email = email;
        this.customerid = customerID;
        this.flightid = flightID;
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
        return customerid;
    }

    public void setCustomerID(int customerID) {
        this.customerid = customerID;
    }

    public int getFlightID() {
        return flightid;
    }

    public void setFlightID(int flightID) {
        this.flightid = flightID;
    }
}
