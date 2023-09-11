package com.Spring;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service("corserv")
public class courseService
{
    @Autowired
    courseRepository courrepo;

    public List<courses> getAllCourses()
    {
        return courrepo.findAll();
    }


    public Optional<courses> getCourById(int cid)
    {
        return courrepo.findById(cid);
    }


    public void addCourse(courses cr)
    {
        courrepo.save(cr);
    }


    public void updateCourse(courses cr, int id)
    {
        courrepo.saveAndFlush(cr);

    }

    public void delCourById(int id)
    {
        courrepo.deleteById(id);
    }

    public Page<courses> allcourbypage(int pg, int size)
    {
        return courrepo.allcourses(PageRequest.of(pg, size));
    }

}

