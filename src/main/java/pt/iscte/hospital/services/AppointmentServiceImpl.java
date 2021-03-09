package pt.iscte.hospital.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pt.iscte.hospital.entities.Appointment;
import pt.iscte.hospital.entities.Patient;
import pt.iscte.hospital.repositories.AppointmentRepository;

import java.util.List;

@Service
public class AppointmentServiceImpl implements AppointmentService {
    @Autowired
    AppointmentRepository appointmentRepository;

    @Override
    public void saveAppointment(Appointment appointment) {
        appointmentRepository.save(appointment);
    }

    @Override
    public List<Appointment> findAllByAppointmentStatus(Integer appointmentStatus){
        return appointmentRepository.findAllByAppointmentStatus(appointmentStatus);
    }

    @Override
    public List<Appointment> findAllByPatientAndAppointmentStatus(Patient patient, Integer appointmentStatus){
        return appointmentRepository.findAllByPatientAndAppointmentStatus(patient, appointmentStatus);
    }


}
