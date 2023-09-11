package com.Spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("colcatserv")
public class collegebycategoryServ {

    @Autowired
    collegebycategoryRepo colcatrepo;


    public List<collegebycategory> collegebycategory(int catid)
    {
        colcatrepo.collegebycategory(catid).forEach(m->{System.out.println(m);});

        return colcatrepo.collegebycategory(catid);
    }

}
