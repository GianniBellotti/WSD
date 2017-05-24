/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author jiaju
 */
public class AirlineJaxbDAO implements AirlineDAO{
    private String filePath;
    private Airline airline;

    public String getFilePath() {
        return filePath;
    }
    
    public void setFilePath() throws Exception{
        this.filePath = filePath;
        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Airline.class);
        Unmarshaller u = jc.createUnmarshaller();

        // Now unmarshal the object from the file
        airline = (Airline)u.unmarshal(new File(filePath));
    }
    @Override
    public String getAirlineName() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Flight getFlight(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Flight> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
