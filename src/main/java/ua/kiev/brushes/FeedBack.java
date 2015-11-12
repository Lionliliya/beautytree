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
    @JoinColumn(name = "PRODUCT_ID")
    private Product product;
    @Column(name = "DATA")
    private Date data;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "CLIENT_ID")
    private Client client;
    @Column(name = "EVALUATION")
    private int evaluation;
    @Column(name = "DESCRIPTION")
    private String feedback;


    public FeedBack() {
    }

    public FeedBack(Product product, Date data, Client client, int evaluation, String feedback) {
        this.product = product;
        this.data = data;
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

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
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
