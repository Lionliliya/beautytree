package ua.kiev.brushes;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Created by lionliliya on 10.10.15.
 */
@Configuration
@ComponentScan("ua.kiev.brushes")
@EnableWebMvc
public class AppConfig {


        @Bean
        public EntityManager entityManager() {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("BeautyJPA");
            return emf.createEntityManager();
        }

        @Bean
        public BeautyDAO beautyDAO() {
            return new BeautyDAOImplementation();
        }

        @Bean
        public UrlBasedViewResolver setupViewResolver() {
            UrlBasedViewResolver resolver = new UrlBasedViewResolver();
            resolver.setPrefix("/WEB-INF/pages/");
            resolver.setSuffix(".jsp");
            resolver.setViewClass(JstlView.class);
            resolver.setOrder(1);
            return resolver;
        }

        @Bean
        public CommonsMultipartResolver multipartResolver() {
            return new CommonsMultipartResolver();
        }
    }
