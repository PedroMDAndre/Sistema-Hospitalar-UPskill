package pt.iscte.hospital.services.user;

import org.springframework.security.core.GrantedAuthority;
import pt.iscte.hospital.entities.User;
import pt.iscte.hospital.security.Role;

import java.util.List;

public interface UserService {
    boolean validateUser(User user);

    boolean validateUser(String username, String password);

    void addUser(User user);

    User findByUsername(String username);

    User findByUserId(Long userId);

    User findUser(String username);

    User currentUser();

    List<GrantedAuthority> getAuthorities(String username);

    Role getUserRole(User user);

    String getUserMainPage(User user);

    boolean validateUserMail(String username, String email);
}
