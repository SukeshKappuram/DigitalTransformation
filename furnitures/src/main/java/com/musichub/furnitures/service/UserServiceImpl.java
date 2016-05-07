package com.musichub.furnitures.service;

import com.musichub.furnitures.model.User;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

@Repository
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService{
	public User save(User user){
		return user;
	}
}
