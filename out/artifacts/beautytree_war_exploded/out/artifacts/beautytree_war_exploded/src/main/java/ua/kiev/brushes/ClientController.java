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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lionliliya on 10.10.15.
 * Last edit on 24.11.15
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
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/news")
    public ModelAndView news(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("articles", beautyDAO.getAllArticlesOrdered());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("news");
        return modelAndView;
    }

    @RequestMapping("/news/sort-desc")
    public ModelAndView news_sort(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("articles", beautyDAO.getAllArticlesDesc());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("news");
        return modelAndView;
    }


    @RequestMapping("/news/{id}")
    public ModelAndView article(@PathVariable("id") int id,
                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("article", beautyDAO.getAllArticles(id));
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String date = sdf.format(beautyDAO.getAllArticles(id).getDateOfPublication());
        modelAndView.addObject("date", date);
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("article");
        return modelAndView;
    }
/**
    @RequestMapping("/news/advice")
    public ModelAndView advice(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("advice");
        return modelAndView;
    }

    @RequestMapping("/news/advice-liner-brushes")
    public ModelAndView advice_liner_brushes(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("advice-liner-brushes");
        return modelAndView;
    } **/

    @RequestMapping("/catalog")
    public ModelAndView catalog(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("products", beautyDAO.getAllProducts());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("catalog");
        return modelAndView;
    }

    @RequestMapping("/catalog/{id}")
    public ModelAndView category(@PathVariable("id") int id,
                                 HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("category", beautyDAO.getCategoryById(id));
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        if (beautyDAO.getProductsByCategoryId(id).size() == 0) {
            modelAndView.addObject("productsSize", 0);
        } else {
            modelAndView.addObject("products", beautyDAO.getProductsByCategoryId(id));
            modelAndView.addObject("productsSize", beautyDAO.getProductsByCategoryId(id).size());
        }
        modelAndView.setViewName("category");
        return modelAndView;
    }


    @RequestMapping("/packing")
    public ModelAndView packing(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("packing");
        return modelAndView;
    }

    @RequestMapping("/deliveryAndPayments")
    public ModelAndView delivery(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("delivery");
        return modelAndView;
    }

    @RequestMapping("/contacts")
    public ModelAndView contacts(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("contacts");
        return modelAndView;
    }

    @RequestMapping("/cart")
    public ModelAndView cart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("totalAmount", totalAmount(session));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping(value = "/cart", method = RequestMethod.POST)
    //на странице товара при нажатии кнопки добавить в корзину
    public ModelAndView cart(@RequestParam(value = "id") int id,
                             @RequestParam(value = "productCategory") String category,
                             @RequestParam(value = "smallimage") String smallimage,
                             @RequestParam(value = "name") String name,
                             @RequestParam(value = "price") int price,
                             @RequestParam(value = "currency") String currency,
                             HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        Product product = beautyDAO.getProductById(id);
        ProductInCart productInCart = new ProductInCart(product, category, smallimage, name, price, currency);

        ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
        ProductsInCart.add(productInCart);
        session.setAttribute("ProductsInCart", ProductsInCart);
        session.setAttribute("cartSize", ProductsInCart.size());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("totalAmount", totalAmount(session));
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
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping("/product/{id}")
    public ModelAndView product(@PathVariable("id") int id,
                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("product", beautyDAO.getProductById(id));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.POST)
    public ModelAndView product(@RequestParam(value = "firstName") String firstName,
                                @PathVariable("id") int id,
                                @RequestParam(value = "email") String email,
                                @RequestParam(value = "evaluation") int evaluation,
                                @RequestParam(value = "feedback") String feedback,
                                HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        Product product = beautyDAO.getProductById(id);
        Client client = beautyDAO.findClientByNameAndEmail(firstName, email);
        FeedBack feedBack = new FeedBack(product, new Date(), client, evaluation, feedback);
        beautyDAO.saveFeedBack(feedBack);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("product", beautyDAO.getProductById(id));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping(value = "/ordering", method = RequestMethod.POST)
    public ModelAndView ordering(@RequestParam(value = "firstName") String firstName,
                                 @RequestParam(value = "phoneNumber") String phoneNumber,
                                 @RequestParam(value = "email") String email,
                                 @RequestParam(value = "delivery") String delivery,
                                 @RequestParam(value = "comments") String comments,
                                 HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("ProductsInCart", session.getAttribute("ProductsInCart"));
        List<ProductInCart> ProductsCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
        modelAndView.addObject("cartSize", 0);
        Client client = new Client(firstName, phoneNumber, email);
        modelAndView.addObject("client", client);

        int amount = 0;
        for (ProductInCart aProductsCart1 : ProductsCart) {
            amount += aProductsCart1.getPrice();
        }
        Order order = new Order(new Date(), delivery, comments, client, ProductsCart, amount);
        for (ProductInCart aProductsCart : ProductsCart) {
            aProductsCart.setOrder(order);
        }
        beautyDAO.saveOrder(order);
        beautyDAO.saveProductInCart(ProductsCart);

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
    public ModelAndView search(@RequestParam(value = "pattern") String pattern, HttpServletRequest request) {
        HttpSession session = request.getSession();
        checkSession(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", beautyDAO.getAllCategories());
        modelAndView.addObject("products", beautyDAO.search(pattern));
        modelAndView.addObject("cartSize", session.getAttribute("cartSize"));
        modelAndView.setViewName("search");
        return modelAndView;
    }

    public void checkSession(HttpSession session) {
        try {
            ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
            int cartCount = (int) session.getAttribute("cartSize");
            ProductsInCart.get(0);
        } catch (Exception e) {
            ArrayList<ProductInCart> ProductsInCart = new ArrayList<>();
            session.setAttribute("ProductsInCart", ProductsInCart);
            session.setAttribute("cartSize", ProductsInCart.size());
        }
    }

    public int totalAmount(HttpSession session) {
        int totalAmount = 0;
        ArrayList<ProductInCart> ProductsInCart = (ArrayList<ProductInCart>) session.getAttribute("ProductsInCart");
        for (ProductInCart aProductsInCart : ProductsInCart) {
            totalAmount += aProductsInCart.getPrice();
        }
        return totalAmount;
    }

}
