package LecturePractice;
import java.util.*;
public class pa5_1 {  
    public static void main(String[] args) {  
        Scanner sc = new Scanner(System.in);  
        try {  
            System.out.printf("输入班级人数:");  
            int numOfStudents = sc.nextInt();  
            int[] scores = new int[numOfStudents];  
            int passCount = 0;  
            int failCount = 0;  
  
            System.out.printf("输入成绩:");  
            for (int i = 0; i < numOfStudents; i++) {  
                scores[i] = sc.nextInt();  
                //类似于C语言中手动实现的非法处理?
                if (scores[i] < 0 || scores[i] > 100)throw new Exception("分数无效，应在0到100之间。");  
                if (scores[i] >= 60)passCount++;
                else failCount++; 
            }  
            double average = calculateAverage(scores);  
            System.out.println("及格人数: " + passCount);  
            System.out.println("不及格人数: " + failCount);  
            System.out.println("平均分: " + average);  
        } catch (Exception e) { //异常类
            System.out.println(e.getMessage());  
        }  
    }  
    //Cannot make a static reference to the non-static method calculateAverage(int[]) from the type pa5_1 报错改进
    static double calculateAverage(int[] scores) {  
        int sum = 0;
        for (int i : scores)sum += i;
        return (double)sum / scores.length;  
    }  
}