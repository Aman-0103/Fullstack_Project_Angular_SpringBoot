package com.Spring;

import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService 
{

	@Autowired
	UserRepository userRepo;
	
	
	
		
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User usr= userRepo.findByUserName(username);
		
					
		return new MyUserInfo(usr);
	}
	
	public void saveUser(Request request) {
		if (userRepo.findByUserName(request.getUserName())!=null ) {
			throw new RuntimeException("User already exists");
		}

		User user = new User();
		user.setUserName(request.getUserName());
		user.setUserPass(request.getUserPwd());

		user.setUserRoles(request.getRoles().stream().map(r -> {
			UserRole ur = new UserRole();
			ur.setRole(r);
			return ur;
		}).collect(Collectors.toList()));

		userRepo.save(user);
	}

}
