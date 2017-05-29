package uts.wsd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author Gianni
 */
public class bookingApplication {
    private String filePath;
    private Bookings bookings;
    public bookingApplication(){};
    public bookingApplication(String filePath, Bookings bookings ){
        this.filePath = filePath;
        this.bookings = bookings;
    }
    public void setFilePath(String filePath) throws JAXBException, FileNotFoundException, IOException {
        // Create the unmarshaller
    JAXBContext jc = JAXBContext.newInstance(Bookings.class);
    Unmarshaller u = jc.createUnmarshaller();

    // Now unmarshal the object from the file
    FileInputStream fin = new FileInputStream(filePath);
    bookings = (Bookings)u.unmarshal(fin); // This loads the "shop" object
    fin.close();
    }
    public void updateXML(Bookings bookings, String filePath) throws Exception {
        this.bookings = bookings;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Bookings.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(bookings, fout);
        fout.close();
    }
    public String getFilePath() {
        return filePath;
    }

    public Bookings getBookings() {
        return bookings;
    }
    public Booking getBookingByID(int ID)
    {
        return bookings.getBookingbyID(ID);
    }
}
