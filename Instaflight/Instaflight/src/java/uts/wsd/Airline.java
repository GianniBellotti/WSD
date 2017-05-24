/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author jiaju
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "airline")
public class Airline {

    String name;
    @XmlElement(name = "flight")
    private List<Flight> flights = new ArrayList<Flight>();

    public Airline() {
    }

    public Airline(String name) {
        this.name = name;
    }

    public List<Flight> getFlights() {
        return flights;
    }
}
