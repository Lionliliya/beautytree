package ua.kiev.brushes;

import java.util.Date;
import java.util.List;

/**
 * Created by lionliliya on 09.10.15.
 */
public interface BeautyDAO {

    public String getAdminPassword(String role);

    public String getAdminUsername(String role);

    public Administrator getAdminByRole(String role);

    public Administrator getAdminById(int id);

    public List<Administrator> getAllAdmins();

    public void saveAdmin(Administrator administrator);

    public void saveAdmin(int id, String role, String password, String username, String domainName, String emailAddress,
                          String phoneNumber1, String phoneNumber2);

    public List<Product> getAllProducts();

    public List<Product> getProductsByCategory(String CategoryName);

    public Product getProductById(int id);

    public List<Product> getProductsByCategoryId(int id);

    public void saveProduct(Product product);

    public void saveProduct(int id, String name, int price, String currency, Category productCategory, int amount,
                            String inStock, String description, String shortDesc, String metaDescription, String metaKeyWords, String metaTitle, String smallimage, String image1,
                            String image2, String image3, String image4);

    public List<Product> search(String pattern);

    public Category getCategoryByName(String  category);

    public Category getCategoryById(int id);


    public List<Category> getAllCategories();


    public void saveCategory(Category category);

    public void saveOrder(Order order);

    public void saveFeedBack(FeedBack feedBack);

    public List<FeedBack> getAllFeedBacks();

    public List<FeedBack> getFeedBacksByClientId(int ClientId);

    public List<FeedBack> getFeedBacksByProductId(int ProductId);

    public FeedBack getFeedBackById(int id);

    public void saveFeedBack(FeedBack feedBack, int id);

    public List<Order> getOrders();

    public List<Client> getClients();

    public List<ProductInCart> getProductsInCart();

    public void saveProductInCart(List<ProductInCart> ProductsCart);

    public Client getClient(int id);

    public Client findClientByNameAndEmail (String FirstName, String Email);

    public void saveClient(Client client, int id);

    public void addClient(Client client);

    public Order getOrder(int id);

    public void saveOrder(int id, String delivery, String comments);

    public void deleteOrder(int id);

    public List<Information> getAllArticles();

    public Information getAllArticles(int id);

    public Information getAllArticleByName(String title);

    public List<Information> getAllArticlesOrdered();

    public List<Information> getAllArticlesDesc();

    public void addArticle(Information article);

    public void deleteArticle(int id);

    public void changeArticle(int id, String title, String imagePath, String shortDescription, Date dateOfPublication,
                              String buttonText, String content, String metaDescription, String metaKeyWords, String metaTitle);

}
