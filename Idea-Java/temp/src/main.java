public class main {
    public static void main(String[] args) {
        int sum=0;
        for(int i=1;i<9;i++){
            // 用于存储当前阶乘结果的临时变量
            long fact = 1;//初始时，乘数为1
            // 计算当前数的阶乘
            for (int j = 2; j <= i; j++) fact *= j;
            //System.out.println("fact of "+i+" is "+fact);
            sum+=fact;
        }
        System.out.println("1-8的阶乘和为：" + sum );
    }
}
