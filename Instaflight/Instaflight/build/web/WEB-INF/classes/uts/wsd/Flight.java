package uts.wsd;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 *
 * @author jiaju
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class Flight {
    private int ID;
    private String origin;
    private String destination;
    private String departTime;
    private String returnTime;
    private int price;
    private String type;
    private int seat;
    public Flight(){
    };
    public Flight(int ID,String origin, String destination,String departTime,String returnTime,int price,String type, int seat)
    {
        this.ID = ID;
        this.destination = destination;
        this.departTime = departTime;
        this.returnTime = returnTime;
        this.price = price;
        this.type = type;
        this.seat = seat;
    };

    public String getOrigin() {
        return origin;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public int getID() {
        return ID;
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
