package ua.kiev.brushes.Enteties;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by lionliliya on 08.10.15.
 */
@Entity
@Table(name="Categories")
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;

    @Column(name="Cname", nullable = false)
    private String name;
    private String info;
    @Column(name="KeyWord")
    private String metaKeyWords;
    @Column(name = "MetaDesc")
    private String metaDescription;
    private String metaTitle;

    public Category() {}

    public Category(String name, String info, String metaDescription, String metaKeyWords, String metaTitle) {
        this.name = name;
        this.info = info;
        this.metaDescription = metaDescription;
        this.metaKeyWords = metaKeyWords;
        this.metaTitle = metaTitle;
    }

    public int getId() {
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

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getMetaKeyWords() {
        return metaKeyWords;
    }

    public void setMetaKeyWords(String metaKeyWords) {
        this.metaKeyWords = metaKeyWords;
    }

    public String getMetaDescription() {
        return metaDescription;
    }

    public void setMetaDescription(String metaDescription) {
        this.metaDescription = metaDescription;
    }

    public String getMetaTitle() {
        return metaTitle;
    }

    public void setMetaTitle(String metaTitle) {
        this.metaTitle = metaTitle;
    }
}
