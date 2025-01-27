package com.example.demo.serviceimpl;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import com.example.demo.model.User;
import com.example.demo.repo.UserRepo;
import com.example.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepo repo;

	@Autowired
	JavaMailSender mailSender;

	@Override
	public void addorupdateuser(User user) {

		repo.save(user);

	}

	@Override
	public String generateOtp() {
		Random random = new Random();
		int otp = 100000 + random.nextInt(900000);
		return String.valueOf(otp);
	}

	@Override
	public void sendOtpEmail(String email, String otp) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(email);
		message.setSubject("Your OTP for Registartion");
		message.setText("Dear User,\n\nYour OTP for registration is: " + otp + "\n\nThank you!");
		mailSender.send(message);

	}

	@Override
	public User userlogin(String email, String pass) {

		return repo.login(email, pass);

	}

	@Override
	public User userbyid(int id) {

		return repo.findById(id).orElseThrow();

	}

	@Override
	public List<User> viewalluser() {

		return repo.findAll();
	}

	@Override
	public void deleteUserById(int id) {

		repo.deleteById(id);

	}

}
