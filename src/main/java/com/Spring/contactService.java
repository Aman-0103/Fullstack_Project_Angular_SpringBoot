package com.Spring;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service("contserv")
public class contactService
{
    @Autowired
    contactRepository contrepo;

    public List<contact> getAllContact()
    {
        return contrepo.findAll();
    }


    public Optional<contact> getContById(int ctid)
    {
        return contrepo.findById(ctid);
    }


    public void addContact(contact ct)
    {
        contrepo.save(ct);
    }


    public void updateContact(contact ct, int id)
    {
        contrepo.saveAndFlush(ct);

    }

    public void delById(int id)
    {
        contrepo.deleteById(id);
    }

    public Page<contact> allcontbypage(int pg, int size)
    {
        return contrepo.allcontacts(PageRequest.of(pg, size));
    }

}

