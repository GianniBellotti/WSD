package uts.wsd;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;

/**
 *
 * @author Gianni
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "bookings")
public class Bookings implements Serializable {

    @XmlElement(name = "booking")
    private ArrayList<Booking> list = new ArrayList<Booking>();

    public Bookings() {
        super();
    }

    public ArrayList<Booking> getList() {
        return list;
    }

    public Booking getBookingbyID(int ID) {
        for (Booking booking : list) {
            if (booking.getCustomerID() == ID) {
                return booking;
            }
        }
        return null;
    }

    public void addBooking(Booking booking) {
        list.add(booking);
    }

    public void removeBooking(Booking booking) {
        list.remove(booking);
    }
}
