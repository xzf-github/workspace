package LecturePractice;
import java.time.*;
import java.util.*;
public class pa6_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		//1:以整形,字符串的方式输入日期;输出日期
		int t1[]  = new int [3];
		System.out.println("请输入年月日并以空格隔开:");
		for(int i=0;i<t1.length;i++)t1[i] = sc.nextInt();
		//sc.close();
		Calendar cal1 = Calendar.getInstance();
		cal1.set(t1[0],t1[1]-1,t1[2]);
		int t2[] = new int [3];
		System.out.println("请按xx-xx-xx的格式输入日期:");
		//Scanner str = new Scanner(System.in);
		String tmp[] = sc.next().split("-");
		for(int i=0;i<t2.length;i++)t2[i] = Integer.parseInt(tmp[i]);
		Calendar cal2 = Calendar.getInstance();
		cal2.set(t2[0], t2[1]-1, t2[2]);
		System.out.printf("日期1为:%ty年%<tm月%<td日\n",cal1);
		System.out.printf("日期2为:%ty年%<tm月%<td日",cal2);
		//2
		LocalDate date2 = LocalDate.of(t2[0], t2[1], t2[2]);  
        LocalDate day1 = LocalDate.of(t2[0], 1, 1);
        // 获取该年份的第一天是星期几  
        DayOfWeek day1OfWeek = DayOfWeek.from(day1.getDayOfWeek());  
        //计算所求日期与该年度第一天之间的差值...这不就是第三问吗...
        int days = date2.getDayOfYear() - day1.getDayOfYear() + 1;  
        // 计算该日期是第几周第几天  
        int week = days / 7 + (days % 7 >= day1OfWeek.getValue() ? 1 : 0);
        int day = (date2.getDayOfWeek().getValue() + (days - 1) % 7) % 7 + 1;
        System.out.printf(",是%d年度的第%d周%d天\n",t2[0],week,day);
        //3
        long time1 = cal1.getTimeInMillis();
        long time2 = cal2.getTimeInMillis();
        long diff =Math.abs(time2-time1)/(1000*60*60*24);
        System.out.println("这两个日期相隔:"+diff+"天");
	}
}
