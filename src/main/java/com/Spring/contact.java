package com.Spring;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="contact")
public class contact
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO,generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private  int contactid;


    @Column(name="contactname")
    private String contactname;


    @Column(name="email")
    private String email;


    @Column(name="phone")
    private String phone;


    @Column(name="message")
    private String message;


    @JsonIgnore
    @ManyToOne(cascade=CascadeType.ALL)
    private category ct;

    @JsonIgnore
    @ManyToOne(cascade=CascadeType.ALL)
    private services sr;


    public int getContactid() {
        return contactid;
    }

    public void setContactid(int contactid) {
        this.contactid = contactid;
    }

    public String getContactname() {
        return contactname;
    }

    public void setContactname(String contactname) {
        this.contactname = contactname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public category getCt() {
        return ct;
    }

    public void setCt(category ct) {
        this.ct = ct;
    }

    public services getSr() {
        return sr;
    }

    public void setSr(services sr) {
        this.sr = sr;
    }
}
