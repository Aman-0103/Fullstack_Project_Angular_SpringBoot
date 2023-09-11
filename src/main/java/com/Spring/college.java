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
@Table(name="college")
public class college
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO,generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private  int clid;


    @Column(name="clnm")
    private String clnm;


    @Column(name="descrip")
    private String descrip;


    @Column(name="location")
    private String location;


    @Column(name="seats")
    private int seats;


    @Column(name="pic")
    private byte[] pic;

    @JsonIgnore
    @ManyToOne(cascade=CascadeType.ALL)
    private category ct;

    public int getClid() {
        return clid;
    }

    public void setClid(int clid) {
        this.clid = clid;
    }

    public String getClnm() {
        return clnm;
    }

    public void setClnm(String clnm) {
        this.clnm = clnm;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    public category getCt() {
        return ct;
    }

    public void setCt(category ct) {
        this.ct = ct;
    }
}
