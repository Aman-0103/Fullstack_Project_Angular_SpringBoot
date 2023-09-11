package com.Spring;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userserv")
public class usersService
{
	@Autowired
	usersRepo usrrepo;


	public users findUsrnm(String username) throws UserNotFoundException
	{
		users u = usrrepo.findByUserName(username).orElseThrow(
				()->new UserNotFoundException("User Not Found !"));
		return u;
	}


	public boolean addUser(users u)
	{
		usrrepo.save(u);
		return true;
	}



}
