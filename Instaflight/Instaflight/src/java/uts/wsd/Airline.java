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

    private String name;
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
    public Flight getFlightbyID(int ID)
    {
        for (Flight flight : flights) {
            if (flight.getID() == ID)
                return flight; // Login correct. Return this user.
        }
        return null; // Login incorrect. Return null.
    }
    public List<Flight> getByCity(String from, String destination){
        List<Flight> tempFlights = new ArrayList<Flight>();
        for (int i = 0; i < flights.size(); i++) {
            Flight flight = getFlightbyID(i);
            if (flight.getOrigin().equals(from) && flight.getDestination().equals(destination)) {
                tempFlights.add(flight);
            }
        }
        /*List<Flight> tempFlights = new ArrayList<Flight>();
        for (int i = 0; i < flights.size(); i++) {
            Flight flight = getFlightbyID(i);
            if (flight.getOrigin().equals(from) && flight.getDestination().equals(destination)) {
                tempFlights.add(flight);
            }
        }*/
        return tempFlights;
    }
    public void setFlights(List<Flight> tempList){
        this.flights = tempList;
    }
    public String getName(){
        return name;
    }
}
