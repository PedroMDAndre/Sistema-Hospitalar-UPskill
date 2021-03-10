package pt.iscte.hospital.entities;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Time;
import java.util.Date;

@Entity
public class Appointment implements Comparable<Appointment>{
    // Attributes
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appointment_id")
    private Long appointmentId;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date date;
    private Time timeBegin;
    private Time timeEnd;
    private Boolean hasChecked = false;
    private String notes;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    @OneToOne(mappedBy = "appointment")
    private Invoice invoice;

    @OneToOne
    @JoinColumn(name = "slot_id")
    private Slot slot;

    private int appointmentStatus;

    // Constructors
    public Appointment() {
    }

    public Appointment(Date date, Time timeBegin, Time timeEnd, String notes) {
        this.date = date;
        this.timeBegin = timeBegin;
        this.timeEnd = timeEnd;
        this.notes = notes;
    }


    // Methods
    public Long getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(Long appointmentId) {
        this.appointmentId = appointmentId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTimeBegin() {
        return timeBegin;
    }

    public void setTimeBegin(Time timeBegin) {
        this.timeBegin = timeBegin;
    }

    public Time getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(Time timeEnd) {
        this.timeEnd = timeEnd;
    }

    public Boolean getHasChecked() {
        return hasChecked;
    }

    public void setHasChecked(Boolean hasChecked) {
        this.hasChecked = hasChecked;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public int getAppointmentStatus() {
        return appointmentStatus;
    }

    public void setAppointmentStatus(int appointmentStatus) {
        this.appointmentStatus = appointmentStatus;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "idAppointment=" + appointmentId +
                ", date=" + date +
                ", hourBegin=" + timeBegin +
                ", hourEnd=" + timeEnd +
                ", notes='" + notes + '\'' +
                '}';
    }

    @Override
    public int compareTo(Appointment o) {
        return this.getSlot().compareTo(o.getSlot());
    }
}
