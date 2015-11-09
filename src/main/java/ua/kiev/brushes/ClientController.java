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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lionliliya on 10.10.15.
 */
@Controller
@RequestMapping("/")
public class ClientController {
    @Autowired
    private BeautyDAO beautyDAO;

    @RequestMapping("/")
    public ModelAndView main(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/news")
    public ModelAndView news(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("news");
        return modelAndView;
    }

    @RequestMapping("/news/advice")
    public ModelAndView advice(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("advice");
        return modelAndView;
    }


    @RequestMapping("/catalog")
    public ModelAndView catalog(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getAllProducts());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("catalog");
        return modelAndView;
    }

    @RequestMapping("/catalog/brushsets")
    public ModelAndView brushsets(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsByCategory("brushsets"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("brushsets");
        return modelAndView;
    }

    @RequestMapping("/catalog/facebrushes")
    public ModelAndView facebrushes(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsByCategory("facebrushes"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("facebrushes");
        return modelAndView;
    }

    @RequestMapping("/catalog/eyebrushes")
    public ModelAndView eyebrushes(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsByCategory("eyebrushes"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("eyebrushes");
        return modelAndView;
    }

    @RequestMapping("/catalog/lipbrushes")
    public ModelAndView lipbrushes(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsByCategory("lipbrushes"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("lipbrushes");
        return modelAndView;
    }

    @RequestMapping("/catalog/accessories")
    public ModelAndView accessories(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsByCategory("accessories"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("accessories");
        return modelAndView;
    }

    @RequestMapping("/packing")
    public ModelAndView packing(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("packing");
        return modelAndView;
    }

    @RequestMapping("/deliveryAndPayments")
    public ModelAndView delivery(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("delivery");
        return modelAndView;
    }

    @RequestMapping("/contacts")
    public ModelAndView contacts(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("contacts");
        return modelAndView;
    }

    @RequestMapping("/cart")
    public ModelAndView cart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("totalAmount", totalAmount(session));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping(value = "/cart", method = RequestMethod.POST) //на странице заказов при нажатии кнопки оформить заказ
    public ModelAndView cart(@RequestParam(value="id") int id,
                             @RequestParam(value="Category") String Category,
                             @RequestParam(value="smallimage") String smallimage,
                             @RequestParam(value="name") String name,
                             @RequestParam(value="quantity") int quantity,
                             @RequestParam(value="price") int price,
                             @RequestParam(value="total_amount") int total_amount,
                             @RequestParam(value="currency") String currency,
                             HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ProductInCart productInCart = new ProductInCart(id, Category, smallimage, name, quantity, price, total_amount, currency);
        ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
        ProductsInCart.add(productInCart);
        session.setAttribute("ProductsInCart", ProductsInCart);
        session.setAttribute("cartSize", ProductsInCart.size());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping("/cartClearing")
    public ModelAndView cartClearing(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        session.removeAttribute("ProductsInCart");
        session.removeAttribute("cartSize");
        ArrayList<ProductInCart> ProductsInCart = new ArrayList<>();
        session.setAttribute("ProductsInCart", ProductsInCart);
        session.setAttribute("cartSize", ProductsInCart.size());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping("/product/{id}")
    public ModelAndView product(@PathVariable("id") int id,HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsById(id));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.POST)
    public ModelAndView product(@RequestParam(value="FirstName") String FirstName,
                                @PathVariable("id") int id,
                                @RequestParam(value="Email") String Email,
                                @RequestParam(value="evaluation") int evaluation,
                                @RequestParam(value="feedback") String feedback,
                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        Product product = beautyDAO.getProductsById(id).get(0);
        Client client = beautyDAO.findClientByNameAndEmail(FirstName, Email);
        FeedBack feedBack = new FeedBack(product, new Date(), client, evaluation, feedback);
        beautyDAO.saveFeedBack(feedBack);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.getProductsById(id));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping(value = "/ordering", method = RequestMethod.POST)
    public ModelAndView ordering(@RequestParam(value="FirstName") String FirstName,
                                 @RequestParam(value="PhoneNumber") String PhoneNumber,
                                 @RequestParam(value="Email") String Email,
                                 @RequestParam(value="delivery") String delivery,
                                 @RequestParam(value="comments") String comments,
                                 HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("cartSize", 0);
        Client client = new Client(FirstName, PhoneNumber, Email);
        modelAndView.addObject("client", client);
        List<ProductInCart> ProductsCart = (ArrayList<ProductInCart>)session.getAttribute("ProductsInCart");
        int amount = 0;
        for (int i = 0; i < ProductsCart.size(); i++) {
            amount += ProductsCart.get(i).getPrice();
        }
        Order order = new Order(new Date(), delivery, comments, client, ProductsCart, amount);
        for (int i = 0; i < ProductsCart.size(); i++) {
            ProductsCart.get(i).setOrder(order);
        }
        beautyDAO.saveOrder(order);
        modelAndView.addObject("orderId", order.getId());
        modelAndView.addObject("delivery", order.getDelivery());
        modelAndView.addObject("totalAmount", totalAmount(session));
        session.removeAttribute("ProductsInCart");
        session.removeAttribute("cartSize");
        ArrayList<ProductInCart> ProductsInCart = new ArrayList<>();
        session.setAttribute("ProductsInCart", ProductsInCart);
        session.setAttribute("cartSize", ProductsInCart.size());
        modelAndView.setViewName("ordering");
        return modelAndView;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView search(@RequestParam(value="pattern") String pattern, HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("products", beautyDAO.search(pattern));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("search");
        return  modelAndView;
    }

    public void checkSession(HttpSession session){
        try {
            ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
            int cartCount = (int) session.getAttribute("cartSize");
            ProductsInCart.get(0);
        }
        catch (Exception e) {
            ArrayList<ProductInCart> ProductsInCart = new ArrayList<ProductInCart>();
            session.setAttribute("ProductsInCart", ProductsInCart);
            session.setAttribute("cartSize", ProductsInCart.size());
        }
    }

    public int totalAmount(HttpSession session) {
        int totalAmount = 0;
        ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
        for (int i = 0; i < ProductsInCart.size(); i++) {
            totalAmount += ProductsInCart.get(i).getPrice();
        }
        return totalAmount;
    }

}
