package repository;

import entity.User;

import java.util.List;

public interface UserRepository {

    void addUser(User user);
    List<User> getAllUsers();

    void updateUser(User user);
    User findUserById(int id);
    void deleteUser(int id);
}
