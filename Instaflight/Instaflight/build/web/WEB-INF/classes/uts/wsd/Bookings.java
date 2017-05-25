/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;

/**
 *
 * @author Gianni
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "root")
public class Bookings implements Serializable {

	@XmlElementWrapper(name = "bookings")
	@XmlElement(name = "booking")
	private ArrayList<Booking> list = new ArrayList<Booking>();
	
	public Bookings() {
		super();
	}
	
	public ArrayList<Booking> getList() {
		return list;
	}
	public void addBooking(Booking booking) {
		list.add(booking);
	}
	public void removeBooking(Booking booking) {
		list.remove(booking);
	}
}
