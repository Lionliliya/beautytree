package ua.kiev.brushes;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import java.util.List;

/**
 * Created by lionliliya on 09.10.15.
 */
public class BeautyDAOImplementation implements BeautyDAO {
    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Product> getAllProducts() {
        Query query = entityManager.createQuery("SELECT a FROM Product a", Product.class);
        return (List<Product>)query.getResultList();
        }
    /**select all of products of proper category**/
    @Override
    public List<Product> getProductsByCategory(String CategoryName) {
        Query query = entityManager.createQuery("SELECT a FROM Product a WHERE a.productCategory =:var", Product.class);
        query.setParameter("var", CategoryName);
        return (List<Product>)query.getResultList();
    }

    @Override
    public List<Product> getProductsById(int id) {
        Query query = entityManager.createQuery("SELECT a FROM Product a WHERE a.id =:var", Product.class);
        query.setParameter("var", id);
        return (List<Product>)query.getResultList();
    }
    @Override
    public List<Product> search(String pattern){
        Query query = entityManager.createQuery("SELECT a FROM Product a WHERE a.name LIKE :pattern", Product.class);
        query.setParameter("pattern", "%" + pattern + "%");
        return (List<Product>)query.getResultList();
    }
    @Override
    public void saveProduct(Product product) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(product);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public Category getCategoryByName(String  category) {
        Query query = entityManager.createQuery("SELECT a FROM Category a WHERE a.name =:pattern", Category.class);
        query.setParameter("pattern", category);
        return  (Category) query.getResultList().get(0);
    }

    @Override
    public List<Category> getAllCategories() {
        Query query = entityManager.createQuery("SELECT a FROM Category a", Category.class);
        return (List<Category>)query.getResultList();
    }

    @Override
    public void saveCategory(Category category) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(category);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public void saveOrder(Order order) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(order);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public void saveFeedBack(FeedBack feedBack) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(feedBack);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    public List<FeedBack> getAllFeedBacks() {
        Query query = entityManager.createQuery("SELECT a FROM FeedBack a", FeedBack.class);
        return (List<FeedBack>)query.getResultList();
    }

    public List<FeedBack> getFeedBacksByClientId(int ClientId) {
        Query query = entityManager.createQuery("SELECT a FROM FeedBack a WHERE a.client.id =:pattern", FeedBack.class);
        query.setParameter("pattern", ClientId);
        return (List<FeedBack>)query.getResultList();
    }

    public List<FeedBack> getFeedBacksByProductId(int ProductId) {
        Query query = entityManager.createQuery("SELECT a FROM FeedBack a WHERE a.product.id =:pattern", FeedBack.class);
        query.setParameter("pattern", ProductId);
        return (List<FeedBack>)query.getResultList();
    }

    @Override
    public List<Order> getOrders() {
        Query query = entityManager.createQuery("SELECT a FROM Order a", Order.class);
        return (List<Order>)query.getResultList();
    }

    @Override
    public List<Client> getClients() {
        Query query = entityManager.createQuery("SELECT a FROM Client a", Client.class);
        return (List<Client>) query.getResultList();
    }

    @Override
    public List<ProductInCart> getProductsInCart() {
        Query query = entityManager.createQuery("SELECT a FROM ProductInCart a", ProductInCart.class);
        return (List<ProductInCart>)query.getResultList();
    }

    @Override
    public Client getClient(int id) {
        Query query = entityManager.createQuery("SELECT a FROM Client a  WHERE a.id =:var", Client.class);
        query.setParameter("var", id);
        return (Client) query.getResultList().get(0);
    }

    public Client findClientByNameAndEmail(String FirstName, String Email) {
        Query query = entityManager.createQuery("SELECT a FROM Client a WHERE a.FirstName =:var1 AND a.Email =:var2", Client.class);
        query.setParameter("var1", FirstName);
        query.setParameter("var2", Email);
        return (Client) query.getResultList().get(0);
    }

    @Override
    public void saveClient(Client client, int id) {
        Query query = entityManager.createQuery("SELECT a FROM Client a  WHERE a.id =:var", Client.class);
        query.setParameter("var", id);
        Client resultClient = (Client) query.getResultList().get(0);
        try{
            entityManager.getTransaction().begin();
            resultClient.setFirstName(client.getFirstName());
            resultClient.setPhoneNumber(client.getPhoneNumber());
            resultClient.setEmail(client.getEmail());
            entityManager.getTransaction().commit();
        }
        catch(Exception ex){
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public void addClient(Client client) {
        try{
            entityManager.getTransaction().begin();
            entityManager.persist(client);
            entityManager.getTransaction().commit();
        }
        catch(Exception ex){
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }

    }

    @Override
    public Order getOrder(int id) {
        Query query = entityManager.createQuery("SELECT a FROM Order a  WHERE a.id =:var", Order.class);
        query.setParameter("var", id);
        return (Order) query.getResultList().get(0);
    }

    @Override
    public void saveOrder(int id, String delivery, String comments) {
        Query query = entityManager.createQuery("SELECT a FROM Order a  WHERE a.id =:var", Order.class);
        query.setParameter("var", id);
        Order resultOrder = (Order) query.getResultList().get(0);
        try{
            entityManager.getTransaction().begin();
            resultOrder.setDelivery(delivery);
            resultOrder.setComments(comments);
            entityManager.getTransaction().commit();
        }
        catch(Exception e){
            entityManager.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public void deleteOrder(int id) {
        Query query = entityManager.createQuery("SELECT a FROM Order a  WHERE a.id =:var", Order.class);
        query.setParameter("var", id);
        Order resultOrder = (Order) query.getResultList().get(0);
        try{
            entityManager.getTransaction().begin();
            entityManager.remove(resultOrder);
            entityManager.getTransaction().commit();
        }
        catch(Exception e){
            entityManager.getTransaction().rollback();
            e.printStackTrace();
        }

    }

}
