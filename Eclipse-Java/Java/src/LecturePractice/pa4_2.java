package LecturePractice;
import java.util.*;
interface Compute{
	public double calAve(double n[]);
}
class Gymnastics implements Compute{
	public double calAve(double n[]) {
		int cnt=n.length;
		double ave=0;
		Arrays.sort(n);
		for(int i=1;i<cnt-1;i++)ave+=n[i];
		if(cnt>2)ave/=(cnt-2);
		return ave;
	}
	
}
class School implements Compute{
	public double calAve(double n[]) {
		double ave=0;
		int cnt=n.length;
		for(int i=0;i<cnt;i++)ave+=n[i];
		ave/=cnt;
		return ave;
	}
}
public class pa4_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double a[] = new double[5];
		for(int i=0;i<5;i++) {
			double tmp = sc.nextDouble(); 
			a[i] = tmp;
		}
		double b[] = new double[10];
		for(int i=0;i<10;i++) {
			double tmp = sc.nextDouble(); 
			b[i] = tmp;
		}
		Compute cpu;
		cpu = new Gymnastics();
		double res = cpu.calAve(a);
		System.out.printf("选手最终得分为: %-6.3f分\n",res);
		cpu = new School();
		res = cpu.calAve(b);
		System.out.printf("平均分数为: %-6.3f分",res);
	}
}
