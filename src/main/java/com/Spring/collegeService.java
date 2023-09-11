package com.Spring;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service("colserv")
public class collegeService
{
    @Autowired
    collegeRepository colrepo;

    public List<college> getAllcollege()
    {
        return colrepo.findAll();
    }


    public Optional<college> getById(int clid)
    {
        return colrepo.findById(clid);
    }


    public void addcollege(college ct)
    {
        colrepo.save(ct);
    }


    public void updateCollege(college ct, int id)
    {
        colrepo.saveAndFlush(ct);

    }

    public void delById(int id)
    {
        colrepo.deleteById(id);
    }


    public Page<college> allcolbypage(int pg, int size)
    {
        return colrepo.allcolleges(PageRequest.of(pg, size));
    }

}

