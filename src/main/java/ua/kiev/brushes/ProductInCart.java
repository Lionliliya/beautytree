package ua.kiev.brushes;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by lionliliya on 09.10.15.
 */
@Entity
@Table(name="Product_In_Cart")
public class ProductInCart implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int Product_In_Cart_id;
    @OneToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_ID")
    private int product_id;
    @Column(name="PRODUCT_NAME")
    private String name;
    @Column(name = "PRODUCT_CATEGORY")
    private String Category;
    @Column(name="QUANTITY")
    private int quantity;
    @Column(name="PRICE")
    private int price;
    @Column(name="TOTAL_AMOUNT")
    private int total_amount=quantity*price;
    @Column(name="CURRENCY")
    private String currency;
    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_ID")
    private Order order;
    @Column(name = "SMALL_IMAGE")
    private String smallimage;

    public ProductInCart() {}

    public ProductInCart(int product_id, String category, String smallimage, String name, int quantity, int price,
                         int total_amount, String currency) {
        this.product_id = product_id;
        Category = category;
        this.smallimage = smallimage;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.total_amount = total_amount;
        this.currency = currency;
    }

    public int getProduct_In_Cart_id() {
        return Product_In_Cart_id;
    }

    public void setProduct_In_Cart_id(int product_In_Cart_id) {
        Product_In_Cart_id = product_In_Cart_id;
    }

    public int getId() {
        return product_id;
    }

    public void setId(int product_id) {
        this.product_id = product_id;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public String getSmallimage() {
        return smallimage;
    }

    public void setSmallimage(String smallimage) {
        this.smallimage = smallimage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(int total_amount) {
        this.total_amount = total_amount;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}
