package pt.iscte.hospital.services;

import pt.iscte.hospital.entities.Patient;
import pt.iscte.hospital.entities.User;

public interface UserService {
    public boolean validateUser(Patient user);
    public void addUser(Patient user);
    public Patient findUser(String username);
}
