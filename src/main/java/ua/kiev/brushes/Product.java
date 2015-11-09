package ua.kiev.brushes;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by lionliliya on 08.10.15.
 */
@Entity
@Table(name="Products")
public class Product implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;
    @Column(name="NAME")
    private String name;
    @Column(name="PRICE")
    private int price;
    @Column(name="CURRENCY")
    private String currency;
    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "CATEGORY_ID")
    private Category productCategory;
    @Column(name="AMOUNT")
    private int amount;
    @Column(name="AVAILABILITY")
    private String inStock;
    @Column(name="DESCRIPTION")
    private String description;
    @Column(name="SHORT_DESCRIPTION")
    private String shortDesc;
    @Column(name="IMAGE_SMALL")
    private String smallimage;
    @Column(name="IMAGE_1")
    private String image1;
    @Column(name="IMAGE_2")
    private String image2;
    @Column(name="IMAGE_3")
    private String image3;
    @Column(name="IMAGE_4")
    private String image4;
    @OneToMany(mappedBy = "product", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "PRODUCT_FEEDBACK", joinColumns = {@JoinColumn(name = "PRODUCT_ID", referencedColumnName = "id")},
            inverseJoinColumns =  { @JoinColumn(name = "FEEDBACK_ID", referencedColumnName = "id") })
    private List<FeedBack> feedBackList;
    @Column(name="FeedBack-Mark")
    private double mark = getValue(feedBackList);

    public Product() {}

    public Product(String name, int price, String currency, Category productCategory, int amount, String inStock,
        String description, String shortDesc, String smallimage, String image1, String image2, String image3,
        String image4) {
        this.name = name;
        this.price = price;
        this.currency = currency;
        this.productCategory = productCategory;
        this.amount = amount;
        this.inStock = inStock;
        this.description = description;
        this.shortDesc = shortDesc;
        this.smallimage = smallimage;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.image4 = image4;
    }


    public double getValue (List<FeedBack> feedBackList) {
        double mark = 0;
            for (FeedBack a : feedBackList)  {
                mark+=a.getEvaluation();
            }
            mark/=feedBackList.size();
        return mark;
    }
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Category getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(Category productCategory) {
        this.productCategory = productCategory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String isInStock() {
        return inStock;
    }

    public void setInStock(String inStock) {
        this.inStock = inStock;
    }

    public String getSmallimage() {
        return smallimage;
    }

    public void setSmallimage(String smallimage) {
        this.smallimage = smallimage;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getImage4() {
        return image4;
    }

    public void setImage4(String image4) {
        this.image4 = image4;
    }

    public List<FeedBack> getFeedBackList() {
        return feedBackList;
    }

    public void setFeedBackList(List<FeedBack> feedBackList) {
        this.feedBackList = feedBackList;
    }

    public double getMark() {
        return mark;
    }

    public void setMark(double mark) {
        this.mark = mark;
    }
}
