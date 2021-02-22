package pt.iscte.hospital.entities;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class User {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String username;
    private String sex;
    @DateTimeFormat (iso =DateTimeFormat.ISO.DATE)
    private Date birthday ;
    private String address;
    private String postalCode;
    private String locality;
    private String account;
    private String nationality;
    private String documentType;
    private Long documentNumber;
    private Long nif;
    private Long patientNumber;
    private Long phone;
    private String email;
    private String password;
    private String photoURL;

    public User(Long id, String name, String username, String sex, Date birthday, String address, String postalCode, String locality, String account, String nationality, String documentType, Long documentNumber, Long nif, Long patientNumber, Long phone, String email, String password, String photoURL) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.sex = sex;
        this.birthday = birthday;
        this.address = address;
        this.postalCode = postalCode;
        this.locality = locality;
        this.account = account;
        this.nationality = nationality;
        this.documentType = documentType;
        this.documentNumber = documentNumber;
        this.nif = nif;
        this.patientNumber = patientNumber;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.photoURL = photoURL;
    }

    public User (){
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    public Long getDocumentNumber() {
        return documentNumber;
    }

    public void setDocumentNumber(Long documentNumber) {
        this.documentNumber = documentNumber;
    }

    public Long getNif() {
        return nif;
    }

    public void setNif(Long nif) {
        this.nif = nif;
    }

    public Long getPatientNumber() {
        return patientNumber;
    }

    public void setPatientNumber(Long patientNumber) {
        this.patientNumber = patientNumber;
    }

    public Long getPhone() {
        return phone;
    }

    public void setPhone(Long phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhotoURL() {
        return photoURL;
    }

    public void setPhotoURL(String photoURL) {
        this.photoURL = photoURL;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", username='" + username + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                ", address='" + address + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", locality='" + locality + '\'' +
                ", account='" + account + '\'' +
                ", nationality='" + nationality + '\'' +
                ", documentType='" + documentType + '\'' +
                ", documentNumber=" + documentNumber +
                ", nif=" + nif +
                ", patientNumber=" + patientNumber +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", photoURL='" + photoURL + '\'' +
                '}';
    }
}
