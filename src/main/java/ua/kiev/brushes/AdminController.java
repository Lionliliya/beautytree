package ua.kiev.brushes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private BeautyDAO beautyDAO;

    @RequestMapping("/")
    public ModelAndView main(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
            if (checkStatus(session)) {
                modelAndView.setViewName("adminIndex");
                modelAndView.addObject("orders", beautyDAO.getOrders());

            } else {
                modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }
    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ModelAndView adminAccess (@RequestParam(value = "username") String username,
                                      @RequestParam(value = "password") String password,
                                      HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if((username.equals("lionliliya"))&&(password.equals("Mne_23_let"))) {
            session.setAttribute("status", "admin");
            modelAndView.setViewName("adminIndex");
            modelAndView.addObject("orders", beautyDAO.getOrders());
            return modelAndView;
        } else {
            modelAndView.setViewName("adminLogin");
            modelAndView.addObject("notification", "Неверный логин или пароль");
            return modelAndView;
        }
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)){
            session.removeAttribute("status");
            modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
            modelAndView.setViewName("index");
        }
        else {
            modelAndView.setViewName("index");
        }
        return modelAndView;
    }



    @RequestMapping("/catalog") /**добавление категорий и товаров, удаление**/
    public ModelAndView ProductCatalog(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("adminCatalog");
            modelAndView.addObject("products", beautyDAO.getAllProducts());
            modelAndView.addObject("categories", beautyDAO.getAllCategories());

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/category/{name}")
    public ModelAndView categoryCatalog(@PathVariable("name") String name,
                                        HttpServletRequest request) {
    HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();

        if (checkStatus(session)) {
            modelAndView.setViewName("categoryAdmin");
            modelAndView.addObject("products", beautyDAO.getProductsByCategory(name));
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/product/edit",  method = RequestMethod.GET)
    public ModelAndView productEdit(@RequestParam(value="id") int id,
                                    HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("productEdit");
            modelAndView.addObject("product", beautyDAO.getProductById(id));
            modelAndView.addObject("categories", beautyDAO.getAllCategories());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/product/save", method = RequestMethod.POST)
    public  ModelAndView saveProduct(@RequestParam(value="id") int id,
                                     @RequestParam(value="name") String name,
                                     @RequestParam(value="price") int price,
                                     @RequestParam(value="currency") String currency,
                                     @RequestParam(value="productCategory") String productCategory,
                                     @RequestParam(value="amount") int amount,
                                     @RequestParam(value="inStock") String inStock,
                                     @RequestParam(value="description") String description,
                                     @RequestParam(value="shortDesc") String shortDesc,
                                     @RequestParam(value="smallimage") String smallimage,
                                     @RequestParam(value="image1") String image1,
                                     @RequestParam(value="image2") String image2,
                                     @RequestParam(value="image3") String image3,
                                     @RequestParam(value="image4") String image4,
                                     HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Category category = beautyDAO.getCategoryByName(productCategory);
            beautyDAO.saveProduct(id, name, price, currency, category, amount, inStock, description, shortDesc,
                    smallimage, image1, image2, image3, image4);
            modelAndView.setViewName("adminCatalog");
            modelAndView.addObject("categories", beautyDAO.getAllCategories());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return  modelAndView;
    }

    @RequestMapping("/catalog/addPage") /**добавление категорий и товаров, удаление**/
    public ModelAndView addPage(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("addPage");
            modelAndView.addObject("categories", beautyDAO.getAllCategories());
            } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }
    @RequestMapping(value="/catalog/addProduct", method = RequestMethod.POST) /**Сохранение товра**/
    public ModelAndView addProduct(@RequestParam(value="name") String name,
                                   @RequestParam(value="price") int price,
                                   @RequestParam(value="currency") String currency,
                                   @RequestParam(value="productCategory") String productCategory,
                                   @RequestParam(value="amount") int amount,
                                   @RequestParam(value="inStock") String inStock,
                                   @RequestParam(value="description") String description,
                                   @RequestParam(value="shortDesc") String shortDesc,
                                   @RequestParam(value="smallimage") String smallimage,
                                   @RequestParam(value="image1") String image1,
                                   @RequestParam(value="image2") String image2,
                                   @RequestParam(value="image3") String image3,
                                   @RequestParam(value="image4") String image4,
                                   HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Category category = beautyDAO.getCategoryByName(productCategory);
            Product product = new Product(name, price, currency, category, amount, inStock, description,  shortDesc,
                    smallimage, image1, image2, image3, image4);
            beautyDAO.saveProduct(product);
            modelAndView.setViewName("addPage");

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }
    @RequestMapping(value="/catalog/addCategory", method = RequestMethod.POST) /**Сохранение ктегории**/
    public ModelAndView addCategory (@RequestParam(value="name") String name,
                                     @RequestParam(value="info") String info,
                                     HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Category category = new Category(name, info);
            beautyDAO.saveCategory(category);
            modelAndView.setViewName("addPage");

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }
    @RequestMapping(value = "/orders/edit", method = RequestMethod.GET)
    public ModelAndView editOrder (@RequestParam(value="id") int id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.addObject("order", beautyDAO.getOrder(id));
            modelAndView.setViewName("editOrder");
        } else {
            modelAndView.setViewName("adminLogin");
          }
        return modelAndView;
    }

    @RequestMapping(value = "/orders/delete", method = RequestMethod.GET)
    public ModelAndView deleteOrder (@RequestParam(value="id") int id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            beautyDAO.deleteOrder(id);
            modelAndView.addObject("orders", beautyDAO.getOrders());
            modelAndView.setViewName("adminIndex");
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/orders/save", method = RequestMethod.POST)
    public ModelAndView saveOrder (@RequestParam(value="id") int id,
                                   @RequestParam(value="delivery") String delivery,
                                   @RequestParam(value="comments") String comments,
                                   HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            beautyDAO.saveOrder(id, delivery, comments);
            modelAndView.addObject("orders", beautyDAO.getOrders());
            modelAndView.setViewName("adminIndex");
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }
    @RequestMapping("/clients")
    public ModelAndView clientsPage (HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("adminClients");
            modelAndView.addObject("clients", beautyDAO.getClients());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/clients/edit", method = RequestMethod.GET)
    public ModelAndView clientEdit (@RequestParam(value="id") int id,
                                    HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("clientEdit");
            modelAndView.addObject("client", beautyDAO.getClient(id));
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/clients/save", method = RequestMethod.POST)
    public ModelAndView clientSave (@RequestParam(value="id") int id,
                                    @RequestParam(value="firstName") String firstName,
                                    @RequestParam(value="phoneNumber") String phoneNumber,
                                    @RequestParam(value="email") String email,
                                    HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Client client = new Client(firstName, phoneNumber, email);
            beautyDAO.saveClient(client, id);
            modelAndView.setViewName("adminClients");
            modelAndView.addObject("clients", beautyDAO.getClients());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return  modelAndView;
    }

    @RequestMapping(value = "/clients/add")
    public ModelAndView clientAdd (HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("addClient");

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/clients/save-new-client", method = RequestMethod.POST)
    public ModelAndView saveNewClient (@RequestParam(value="firstName") String firstName,
                                       @RequestParam(value="phoneNumber") String phoneNumber,
                                       @RequestParam(value="email") String email,
                                       HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Client client = new Client (firstName, phoneNumber, email);
            beautyDAO.addClient(client);
            modelAndView.setViewName("adminClients");
            modelAndView.addObject("clients", beautyDAO.getClients());

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks")
    public ModelAndView adminFeedbacks (HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {

            modelAndView.setViewName("adminFeedbacks");
            modelAndView.addObject("feedbacks", beautyDAO.getAllFeedBacks());

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks/byClientId", method = RequestMethod.POST)
    public ModelAndView adminFeedbacksByClient (@RequestParam(value="id") int id,
                                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("adminFeedbacks");
            modelAndView.addObject("feedbacks", beautyDAO.getFeedBacksByClientId(id));

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks/byProductId", method = RequestMethod.POST)
    public ModelAndView adminFeedbacksByProduct (@RequestParam(value="id") int id,
                                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("adminFeedbacks");
            modelAndView.addObject("feedbacks", beautyDAO.getFeedBacksByProductId(id));

        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks/edit", method = RequestMethod.GET)
    public ModelAndView feedbackEdit (@RequestParam(value="id") int id,
                                    HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("feedbackEdit");
            modelAndView.addObject("feedback", beautyDAO.getFeedBackById(id));
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks/save", method = RequestMethod.POST)
    public ModelAndView feedbackSave (  @RequestParam(value="id") int id,
                                        @RequestParam(value="product") int productId,
                                        @RequestParam(value="data") Date data,
                                        @RequestParam(value = "client") int clientId,
                                        @RequestParam(value="evaluation") int evaluation,
                                        @RequestParam(value="feedback") String feedback,
                                        HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Client client = beautyDAO.getClient(clientId);
            Product product = beautyDAO.getProductById(productId);
            FeedBack feedBack = new FeedBack(product, data, client, evaluation, feedback);
            beautyDAO.saveFeedBack(feedBack, id);
            modelAndView.setViewName("adminFeedbacks");
            modelAndView.addObject("feedbacks", beautyDAO.getAllFeedBacks());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return  modelAndView;
    }

    @RequestMapping(value = "/feedbacks/add")
    public ModelAndView addFeedBack(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            modelAndView.setViewName("addFeedBack");
            modelAndView.addObject("clients", beautyDAO.getClients());
            modelAndView.addObject("products", beautyDAO.getAllProducts());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/feedbacks/saveNewFeedback", method = RequestMethod.POST)
    public ModelAndView saveNewClient (@RequestParam(value="product") int id,
                                       @RequestParam(value = "client") int idclient,
                                       @RequestParam(value="evaluation") int evaluation,
                                       @RequestParam(value="feedback") String feedback,
                                       HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (checkStatus(session)) {
            Product resultproduct = beautyDAO.getProductById(id);
            Client resultclient = beautyDAO.getClient(idclient);
            FeedBack feedBack = new FeedBack(resultproduct, new Date(), resultclient, evaluation, feedback);
            beautyDAO.saveFeedBack(feedBack);
            modelAndView.setViewName("adminFeedbacks");
            modelAndView.addObject("feedbacks", beautyDAO.getAllFeedBacks());
        } else {
            modelAndView.setViewName("adminLogin");
        }
        return modelAndView;
    }



    public boolean checkStatus(HttpSession session){
        boolean checking;
        String status = (String)session.getAttribute("status");
        if (status=="admin") checking = true;
        else checking=false;
        return checking;
    }



}
