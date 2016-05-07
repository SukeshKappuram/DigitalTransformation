package com.musichub.furnitures.service;

import com.musichub.furnitures.model.*;
import org.springframework.stereotype.*;

@Service
public interface UserService {
	public User save(User user);
}
