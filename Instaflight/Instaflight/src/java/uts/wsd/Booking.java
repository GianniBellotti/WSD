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
    private int custID;
    private int flightID;
            
    public Booking() {
		super();
	}
    
    public Booking(String name, String email, int custID, int flightID) {
        this.name = name;
        this.email = email;
        this.custID = custID;
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

    public int getCustID() {
        return custID;
    }

    public void setCustID(int custID) {
        this.custID = custID;
    }

    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }
}
