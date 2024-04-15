import com.controller.DogController;
import com.entity.Dog;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class main {
    public static void main(String[] args) {
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
        //ApplicationContext context=new AnnotationConfigApplicationContext(DogController.class);
        //Dog dog1=context.getBean(Dog.class);
        Object dog2=applicationContext.getBean("dog2");
        //System.out.println(dog1.toString());
        System.out.println(dog2);
    }
}
