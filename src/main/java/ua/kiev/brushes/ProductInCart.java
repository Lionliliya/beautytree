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
    private Product product_id;
    @Column(name="PRODUCT_NAME")
    private String name;
    @Column(name = "PRODUCT_CATEGORY")
    private String Category;

    @Column(name="PRICE")
    private int price;

    @Column(name="CURRENCY")
    private String currency;
    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_ID")
    private Order order;
    @Column(name = "SMALL_IMAGE")
    private String smallimage;

    public ProductInCart() {}

    public ProductInCart(Product product_id, String category, String smallimage, String name,  int price,
                          String currency) {
        this.product_id = product_id;
        Category = category;
        this.smallimage = smallimage;
        this.name = name;

        this.price = price;

        this.currency = currency;
    }

    public int getProduct_In_Cart_id() {
        return Product_In_Cart_id;
    }

    public void setProduct_In_Cart_id(int product_In_Cart_id) {
        Product_In_Cart_id = product_In_Cart_id;
    }

    public Product getId() {
        return product_id;
    }

    public void setId(Product product_id) {
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





    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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
