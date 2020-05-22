package com.pineapple.soft.servicies;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.pineapple.soft.entities.User;
import com.pineapple.soft.repositories.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService {
	
	
	@Autowired
	UserRepository userrepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Optional<User> user= userrepository.findByUsername(username);
		
		user.orElseThrow(()-> new UsernameNotFoundException("We not found "+username));
		
		return user.map(MyUserDetails::new).get();
		
	}

}
