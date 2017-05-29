/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 *
 * @author jiaju
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
    private String name;
    private String email;
    private String password;
    private String dob;
    private String customerid;
    public User(){
    }
    
    public User(String email, String name,String password, String dob, String customerid) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.customerid = customerid;
    }

    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    
    public void setAll(String name, String email, String password, String dob, String customerid){
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.customerid = customerid;
    }
}
