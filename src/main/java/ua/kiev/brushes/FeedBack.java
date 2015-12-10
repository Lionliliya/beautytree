package ua.kiev.brushes;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by lionliliya on 09.10.15.
 */
@Entity
@Table(name="Feedbacks")
public class FeedBack implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "product_id")
    private Product product;
    private Date date;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "client_id")
    private Client client;
    private int evaluation;
    private String feedback;


    public FeedBack() {}

    public FeedBack(Product product, Date date, Client client, int evaluation, String feedback) {
        this.product = product;
        this.date = date;
        this.client = client;
        this.evaluation = evaluation;
        this.feedback = feedback;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public int getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(int evaluation) {
        this.evaluation = evaluation;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}
