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
    @Column(name="FIRST_NAME")
    private String FirstName;
    @Column(name="PHONE_NUMBER")
    private String PhoneNumber;
    @Column(name="EMAIL")
    private String Email;
    @OneToMany(fetch=FetchType.LAZY, cascade = CascadeType.ALL, mappedBy="client")
    @JoinTable(name = "CLIENT_FEEDBACK", joinColumns = {@JoinColumn(name = "CLIENT_ID", referencedColumnName = "id")},
            inverseJoinColumns =  { @JoinColumn(name = "FEEDBACK_ID", referencedColumnName = "id") })
    private List<FeedBack> feedBacks;

    public Client() {}

    public Client(String firstName, String phoneNumber, String email, List<FeedBack> feedBacks) {
        FirstName = firstName;
        PhoneNumber = phoneNumber;
        Email = email;
        this.feedBacks = feedBacks;
    }

    public Client(String firstName, String phoneNumber, String email) {
        FirstName = firstName;
        PhoneNumber = phoneNumber;
        Email = email;
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
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public List<FeedBack> getFeedBacks() {
        return feedBacks;
    }

    public void setFeedBacks(List<FeedBack> feedBacks) {
        this.feedBacks = feedBacks;
    }
}
