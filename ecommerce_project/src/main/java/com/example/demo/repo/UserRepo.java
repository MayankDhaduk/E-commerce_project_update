package com.example.demo.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {

	@Query("from User u where u.email=?1 and u.pass=?2")
	User login(String email, String pass);
	
	Optional<User> findByEmail(String email);

}
