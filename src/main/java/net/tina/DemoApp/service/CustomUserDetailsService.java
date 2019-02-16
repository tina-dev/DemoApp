package net.tina.DemoApp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import net.tina.DemoApp.model.CustomUserDetails;
import net.tina.DemoApp.model.Users;
import net.tina.DemoApp.repository.UserRepository;
@Service
public class CustomUserDetailsService implements UserDetailsService
{
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username)
	{
		Optional <Users> optionalUsers = userRepository.findByUsername(username);
		
		optionalUsers
        .orElseThrow(() -> new UsernameNotFoundException("Username not found"));
return optionalUsers
        .map(CustomUserDetails::new).get();
	}
	public void registerNewUser(Users newUser)
    {
    	userRepository.save(newUser);
    }
}
