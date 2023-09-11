package com.Spring;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class collegebycategory {

    private int catid;
    private String catnm;
    @Id
    private  int clid;
    private String clnm;
    private String descrip;
    private String location;
    private int seats;
    private byte[] pic;

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public String getCatnm() {
        return catnm;
    }

    public void setCatnm(String catnm) {
        this.catnm = catnm;
    }

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
}
