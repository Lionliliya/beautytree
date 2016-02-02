package ua.kiev.brushes;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by lionliliya on 08.10.15.
 */
@Entity
@Table(name="Clients")
public class Client implements Serializable{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;
    @Column(name= "FirstName", nullable = false)
    private String firstName;
    @Column(name="PhoneNumber", nullable = false)
    private String phoneNumber;
    @Column(name="Email", nullable = false)
    private String email;

    @OneToMany(fetch=FetchType.LAZY, cascade = CascadeType.ALL, mappedBy="client")
    private List<FeedBack> feedBacks;

    public Client() {}

    public Client(String firstName, String phoneNumber, List<FeedBack> feedBacks, String email) {
        this.firstName = firstName;
        this.phoneNumber = phoneNumber;
        this.feedBacks = feedBacks;
        this.email = email;
    }

    public Client(String firstName, String phoneNumber, String email) {
        this.firstName = firstName;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<FeedBack> getFeedBacks() {
        return feedBacks;
    }

    public void setFeedBacks(List<FeedBack> feedBacks) {
        this.feedBacks = feedBacks;
    }
}
