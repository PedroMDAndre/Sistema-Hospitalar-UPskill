package pt.iscte.hospital.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pt.iscte.hospital.entities.Patient;
import pt.iscte.hospital.entities.User;
import pt.iscte.hospital.repositories.PatientRepository;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private PatientRepository patientRepository;

    public boolean validateUser(Patient user) {
        if (user == null) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public boolean validateUser(String username, String password) {
        System.out.println("Verificar pass: " + password); // TODO verificar se a pass está encriptada
        User userLogged = patientRepository.findByUsername(username);
        if (userLogged != null){
            //ver password
            if (userLogged.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void addUser(Patient user) {
        patientRepository.save(user);
    }

    @Override
    public Patient findUser(String username) {
        return patientRepository.findByUsername(username);
    }
}
