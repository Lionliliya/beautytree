package ua.kiev.brushes;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by lionliliya on 08.10.15.
 */
@Entity
@Table(name="Category")
public class Category implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private int id;
    @Column(name="NAME")
    private String name;
    @Column(name="INFO")
    private String info;

    public Category() {}

    public Category(String name, String info) {
        this.name = name;
        this.info = info;
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
}
