package com.app.service;

import java.util.List;

import com.app.pojos.Logins;

public interface ILoginService {
	public List<Logins> getAllLogins();

	public Logins getLoginsById(int id);

	public void saveOrUpdate(Logins login);

	public void deleteLogin(int id);

	public Logins validateUser(String username, String password);
}
