package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.Logins;
import com.app.repository.ILoginsRepository;

@Service
@Transactional
public class LoginServiceImpl implements ILoginService {

	@Autowired
	ILoginsRepository logRepo;

	@Override
	public List<Logins> getAllLogins() {
		return (List<Logins>) logRepo.findAll();
	}

	@Override
	public Logins getLoginsById(int id) {
		Logins login = logRepo.findById(id).get();
		System.out.println(login);
		return logRepo.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Logins login) {
		logRepo.save(login);
	}

	@Override
	public void deleteLogin(int id) {
		logRepo.deleteById(id);
	}

	@Override
	public Logins validateUser(String username, String password) {
		Logins loginspojo = logRepo.findByUsername(username);
		if (loginspojo == null)
		{
			Logins loginspojo1 = new Logins();
			return loginspojo1;
		}
		System.out.println("In upper user" + loginspojo.getPassword());
		if (loginspojo.getPassword().equals(password)) {
			System.out.println("In validate user" + loginspojo);
			return loginspojo;
		} else {
			Logins loginspojo1 = new Logins();
			return loginspojo1;
		}
	}

	// @Override
//	public Logins getLoginsByUsername(String username) {
//		return logRepo.findByUsername(username);
//	}

}
