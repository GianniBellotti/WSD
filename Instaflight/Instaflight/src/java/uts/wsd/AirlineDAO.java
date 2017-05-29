/**
 *
 * @author jiaju
 * @description provides a reusable template for data access layer
 */
package uts.wsd;

import java.util.List;

public interface AirlineDAO {
    String getAirlineName();
    Flight getFlight(int id);
    Airline getAirline();
}
