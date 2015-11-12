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
    @Column(name="DATA")
    private Date date;
    @Column(name="DELIVERY")
    private String delivery;
    @Column(name="COMMENTS")
    private String comments;
    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "CLIENT_ID")
    private Client client;
    @OneToMany(mappedBy = "order", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "ORDER_PRODUCTCART", joinColumns = {@JoinColumn(name = "ORDER_ID", referencedColumnName = "id")},
            inverseJoinColumns =  { @JoinColumn(name = "PRODUCTCART_ID", referencedColumnName = "Product_In_Cart_id") })
    private List<ProductInCart> ProductsInCart;
    @Column(name="TOTAL_AMOUNT")
    private int totalAmount = Amount(ProductsInCart);

    public Order() {}

    public Order(Date date, String delivery, String comments, Client client, List<ProductInCart> productsInCart, int totalAmount) {
        this.date = date;
        this.delivery = delivery;
        this.comments = comments;
        this.client = client;
        ProductsInCart = productsInCart;
        this.totalAmount = totalAmount;
    }

    public int Amount(List<ProductInCart> ProductsInCart) {
        int totalAmount = 0;
        for (int i = 0; i < ProductsInCart.size(); i++) {
            totalAmount += ProductsInCart.get(i).getPrice();
        }
        return totalAmount;
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
        return ProductsInCart;
    }

    public void setProductsInCart(List<ProductInCart> productsInCart) {
        ProductsInCart = productsInCart;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }
}
