package ua.kiev.brushes.DAO;

import ua.kiev.brushes.Domains.*;

import java.util.Date;
import java.util.List;

public interface BeautyDAO {

    String getAdminPassword(String role);

    String getAdminUsername(String role);

    Administrator getAdminByRole(String role);

    Administrator getAdminById(int id);

    List<Administrator> getAllAdmins();

    void saveAdmin(Administrator administrator);

    void saveAdmin(int id, String role, String password, String username, String domainName, String emailAddress,
                          String phoneNumber1, String phoneNumber2);

    List<Product> getAllProducts();

    List<Product> getProductsByCategory(String CategoryName);

    Product getProductById(int id);

    List<Product> getProductsByCategoryId(int id);

    void saveProduct(Product product);

    void saveProduct(int id, String name, int price, String currency, Category productCategory, int amount,
                            String inStock, String description, String shortDesc, String metaDescription,
                            String metaKeyWords, String metaTitle, String smallimage, String smallimage1, String image1,
                            String image2, String image3, String image4);

    List<Product> search(String pattern);

    Category getCategoryByName(String  category);

    Category getCategoryById(int id);

    List<Category> getAllCategories();

    void saveCategory(Category category);

    void saveCategory(int id, String name, String info, String metaDescription, String metaKeyWords, String metaTitle);

    void saveOrder(Order order);

    void saveFeedBack(FeedBack feedBack);

    List<FeedBack> getAllFeedBacks();

    List<FeedBack> getFeedBacksByClientId(int ClientId);

    List<FeedBack> getFeedBacksByProductId(int ProductId);

    FeedBack getFeedBackById(int id);

    void saveFeedBack(FeedBack feedBack, int id);

    List<Order> getOrders();

    List<Client> getClients();

    List<ProductInCart> getProductsInCart();

    void saveProductInCart(List<ProductInCart> ProductsCart);

    Client getClient(int id);

    Client findClientByNameAndEmail (String FirstName, String Email);

    void saveClient(Client client, int id);

    void addClient(Client client);

    Order getOrder(int id);

    void saveOrder(int id, String delivery, String comments);

    void deleteOrder(int id);

    List<Information> getAllArticles();

    Information getAllArticles(int id);

    Information getAllArticleByName(String title);

    List<Information> getAllArticlesOrdered();

    List<Information> getAllArticlesDesc();

    void addArticle(Information article);

    void deleteArticle(int id);

    void changeArticle(int id, String title, String imagePath, String shortDescription, Date dateOfPublication,
                              String buttonText, String content, String metaDescription, String metaKeyWords, String metaTitle);

    void addFeedbackToProduct(FeedBack feedBack, int productId);
}
