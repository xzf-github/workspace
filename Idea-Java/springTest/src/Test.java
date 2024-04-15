import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args){
        ClassPathXmlApplicationContext classPathXmlApplicationContext=
                new ClassPathXmlApplicationContext("applicationContext.xml");
        Object student=classPathXmlApplicationContext.getBean("student");
        System.out.println(student);
    }
}
