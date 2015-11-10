package ua.kiev.brushes;

import java.util.List;

/**
 * Created by lionliliya on 09.10.15.
 */
public interface BeautyDAO {


    public List<Product> getAllProducts();

    public List<Product> getProductsByCategory(String CategoryName);

    public List<Product> getProductsById(int id);

    public List<Product> search(String pattern);

    public Category getCategoryByName(String  category);

    public List<Category> getAllCategories();

    public void saveProduct(Product product);

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

    public Client getClient(int id);

    public Client findClientByNameAndEmail (String FirstName, String Email);

    public void saveClient(Client client, int id);

    public void addClient(Client client);

    public Order getOrder(int id);

    public void saveOrder(int id, String delivery, String comments);

    public void deleteOrder(int id);



}
