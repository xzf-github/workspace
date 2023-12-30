package LecturePractice;
import java.util.*;
public class pa6_3 {
	public static void main(String[] args) {
		Set<Integer>lotteryNum = getRandomNum(1000, 9);
		//for(int i:lottery)System.out.printf("%d ",i);
		int res = matchNums(lotteryNum, getUserNums());
		System.out.println("本期彩票开奖号码为:");
		for(int i:lotteryNum)System.out.printf("%d ",i);
		System.out.println("");
		switch (res) {
		case 3:System.out.println("恭喜你中了三个号,获得一等奖");break;
		case 2:System.out.println("恭喜你中了两个号,获得二等奖");break;
		case 1:System.out.println("恭喜你中了一个号,获得三等奖");break;
		default:System.out.println("差一点点就中奖了,下次再来吧!");
		}
	}
	//产生n个100-999随机数
	public static Set<Integer> getRandomNum(int max,int n) {  
        Set<Integer> lotteryNumbers = new HashSet<>();//哈希大法好!  
        Random rand = new Random();  
        while (lotteryNumbers.size() < n) {  
            int num = rand.nextInt(max-100) + 100;  
            if (!lotteryNumbers.contains(num)) {
                lotteryNumbers.add(num);  
            } 
        } 
        return lotteryNumbers; 
    }  
//	public static int[] getRandomNum(int max,int n) {
//			int randNum[] = new int[n];
//			int idx = 0;
//			randNum[0]=-1;
//			Random random = new Random();
//			while(idx<n) {
//				int num = random.nextInt(max-100)+100;
//				boolean flag=false;//判断数组中是否已有某数
//				for(int i:randNum)
//					if(i==num)flag=true;
//				if(!flag)randNum[idx++] = num;
//			}
//			return randNum;
//	}
	public static int[] getUserNums() {
		int userNums[] = new int[3];
		Scanner sc = new Scanner(System.in);
		System.out.printf("请输入想要购买的三个号码(100-999):");
		for(int i=0;i<3;i++) {
			userNums[i] = sc.nextInt();
		}
		return userNums;
	}
	public static int matchNums(Set<Integer>a,int b[]) {
		int res=0;
		for(int i:a) {//遍历用户彩票号
			if(a.contains(i)) {//与中奖号核对
				res++;
			}
		}
		return res;
	}
}