package com.Spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("courcatserv")
public class coursebycategoryServ {

    @Autowired
    coursebycategoryRepo courcatrepo;


    public List<coursebycategory> coursebycategory(int catid)
    {
        courcatrepo.coursebycategory(catid).forEach(m->{System.out.println(m);});

        return courcatrepo.coursebycategory(catid);
    }

}
