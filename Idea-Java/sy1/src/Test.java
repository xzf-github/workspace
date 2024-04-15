import com.controller.StudentController;
import com.entity.Student;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[]args){
        ApplicationContext applicationContext=
                new ClassPathXmlApplicationContext("applicationContext.xml");
        Object user1=applicationContext.getBean("user1");
        Object user2=applicationContext.getBean("user2");
        System.out.println(user1);
        System.out.println(user2);
        ApplicationContext context=new AnnotationConfigApplicationContext(StudentController.class);
        Student student=context.getBean(Student.class);
        student.addStudent();
    }
}
