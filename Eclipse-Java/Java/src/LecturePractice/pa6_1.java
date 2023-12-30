package LecturePractice;
import java.util.Scanner;  
public class pa6_1 {  
    public static void main(String[] args) {  
        Scanner sc = new Scanner(System.in);  
        System.out.println("输入菜单内容：");  
        String in = sc.nextLine();
        //System.out.println(in);
        String menu[] = in.split(",");
//        for(String i : menu) {
//        	System.out.println(i);
//        }
        double t = 0.0;  
        for (String i : menu) {  
            String[] info = i.trim().split(":");
            double price = Double.parseDouble(info[1]);  
            t += price;
            System.out.println(info[0]+":"+price+"￥");  
        }  
        System.out.println("菜单的总价格：" + t + "￥");  
    }  
}