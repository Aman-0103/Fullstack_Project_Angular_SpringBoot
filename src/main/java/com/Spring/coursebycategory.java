package com.Spring;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class coursebycategory {

    private int catid;
    private String catnm;
    @Id
    private  int crid;
    private String crnm;
    private String descrip;
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

    public int getCrid() {
        return crid;
    }

    public void setCrid(int crid) {
        this.crid = crid;
    }

    public String getCrnm() {
        return crnm;
    }

    public void setCrnm(String crnm) {
        this.crnm = crnm;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
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
