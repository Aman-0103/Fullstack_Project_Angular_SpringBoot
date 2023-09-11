package com.Spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service("serviceserv")
public class servicesServ
{
    @Autowired
    serviceRepository servrepo;

    public List<services> getAllServices()
    {
        return servrepo.findAll();
    }


    public services getServById(int sid)
    {
        return servrepo.findById(sid).orElse(null);
    }


    public void addService(services sr)
    {
        servrepo.save(sr);
    }


    public void updateService(services sr,int id)
    {
        services s1 = this.getServById(id);

        s1.setServicename(sr.getServicename());

        servrepo.save(s1);

    }

    public void delById(int id)
    {
        servrepo.deleteById(id);
    }

    public Page<services> allservbypage(int pg,int size)
    {
        return servrepo.allservices(PageRequest.of(pg, size));
    }


}
