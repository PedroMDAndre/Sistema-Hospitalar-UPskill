package pt.iscte.hospital.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pt.iscte.hospital.entities.*;
import pt.iscte.hospital.repositories.UserRepository;
import pt.iscte.hospital.security.IAuthenticationFacade;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private IAuthenticationFacade authenticationFacade;

    @Autowired
    private UserRepository userRepository;

    public boolean validateUser(User user) {
        if (user == null) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public User currentUser() {
        String username = authenticationFacade.getAuthentication().getName();
        // procurar na base de dados
        User user = userRepository.findByUsername(username);


        return user;
    }

    @Override
    public boolean validateUser(String username, String password) {
        System.out.println("Verificar pass: " + password); // TODO verificar se a pass está encriptada
        User userLogged = userRepository.findByUsername(username);
        if (userLogged != null) {
            //ver password
            if (userLogged.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }

    @Override
    public User findUser(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public String findAccountByUsername(String username) {
        return userRepository.findAccountByUsername(username);
    }
}

