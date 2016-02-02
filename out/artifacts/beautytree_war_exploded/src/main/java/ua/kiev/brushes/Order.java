package ua.kiev.brushes;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by lionliliya on 08.10.15.
 */
@Entity
@Table(name="Orders")
public class Order implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;
    @Column(nullable = false)
    private Date date;
    @Column(nullable = false)
    private String delivery;
    private String comments;
    @OneToOne(cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "client_id")
    private Client client;
    @OneToMany(mappedBy = "order",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    private List<ProductInCart> productsInCart;
    private int totalAmount = Amount(productsInCart);

    public Order() {}

    public Order(Date date, String delivery, String comments, Client client, List<ProductInCart> productsInCart, int totalAmount) {
        this.date = date;
        this.delivery = delivery;
        this.comments = comments;
        this.client = client;
        this.productsInCart = productsInCart;
        this.totalAmount = totalAmount;
    }

    public int Amount(List<ProductInCart> productsInCart) {
        if (productsInCart == null) {
            return 0;
        } else {
            int totalAmount = 0;
            for (int i = 0; i < productsInCart.size(); i++) {
                totalAmount += productsInCart.get(i).getPrice();
            }
            return totalAmount;
        }
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public List<ProductInCart> getProductsInCart() {
        return productsInCart;
    }

    public void setProductsInCart(List<ProductInCart> productsInCart) {
        productsInCart = productsInCart;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }
}
