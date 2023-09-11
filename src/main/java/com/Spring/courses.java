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

import java.util.Optional;


@Entity
@Table(name="courses")
public class courses
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO,generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private  int crid;


    @Column(name="crnm")
    private String crnm;


    @Column(name="descrip")
    private String descrip;


    @Column(name="seats")
    private int seats;


    @Column(name="pic")
    private byte[] pic;


    @JsonIgnore
    @ManyToOne(cascade=CascadeType.ALL)
    private category ct;


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

    public category getCt() {
        return ct;
    }

    public void setCt(category ct) {
        this.ct = ct;
    }


}
