package service;

import java.util.List;

import dao.UserDao;
import model.User;

public class UserService {
	UserDao userDao = new UserDao();

	public void insert(User user) {
		userDao.insert(user);
	}

	public void edit(User newUser) {
		User oldUser = userDao.get(newUser.getId());

		oldUser.setUsername(newUser.getUsername());
		oldUser.setPassword(newUser.getPassword());
		oldUser.setRoleId(newUser.getRoleId());
		userDao.edit(oldUser);
	}

	public User get(String username) {
		return userDao.get(username);
	}

	public User get(int id) {
		return userDao.get(id);
	}

	public List<User> getAll() {
		return userDao.getAll();
	}

	public List<User> search(String username) {
		return userDao.search(username);
	}

	public User login(String username, String password) {
		User user = this.get(username);
		if (user != null && password.equals(user.getPassword())) {
			return user;
		}

		return null;
	}

	public boolean register(String username, String password) {
		if (userDao.checkExistUsername(username)) {
			return false;
		}
		userDao.insert(new User(username, password));
		return true;
	}

	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}
}
