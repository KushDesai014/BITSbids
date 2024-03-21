package DAO;

import ENTITY.User;
public interface userDAO {
public boolean userRegister(User u);
public User userLogin(String uname, String pass);
}
