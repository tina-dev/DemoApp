package net.tina.DemoApp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import net.tina.DemoApp.model.Users;

public interface UserRepository extends JpaRepository <Users, Integer>
{
	Optional <Users> findByUsername(String username);
}
