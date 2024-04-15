// See https://aka.ms/new-console-template for more information


using System.Runtime.Intrinsics.X86;


class Program
{
    static void t1() {
        Console.Title = "023321712228徐泽枫";
        Console.Write("输入年份:");
        int year = int.Parse(Console.ReadLine());
        Console.WriteLine(year);
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
            Console.WriteLine(year + "是闰年");
        else Console.WriteLine(year + "不是闰年");
    }
    static void t2() {
        Console.Title = "023321712228徐泽枫";
        int cnt = 0;
        for (int i = 1; i <= 100; i++) {
            if (i % 3 == 0) {
                Console.Write("{0,-3}", i);
                cnt++;
                if (cnt % 10 == 0) Console.WriteLine();
            }
        }
        if (cnt % 10 != 0) Console.WriteLine();
    }
    static bool IsPrime(int n){
        if (n < 2) return false;
        for(int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
    static void t3() {
        Console.Title="023321712228徐泽枫";
        int cnt = 0;
        for (int i = 1; i <= 100; i++)
        {
            if (IsPrime(i))
            {
                Console.Write("{0,4}", i);
                cnt++;
                if (cnt % 5 == 0) Console.WriteLine();
            }
        }
        if (cnt % 5 == 0) Console.WriteLine();
    }
    static void inputArray(){
        Console.Title = "023321712228徐泽枫";
        Console.WriteLine("请输入元素个数:");
        int n = int.Parse(Console.ReadLine());
        int[] arr = new int[n];
        for(int i=0;i<n;i++)arr[i] = int.Parse(Console.ReadLine());
        for(int i=0;i<n; i++) Console.Write(arr[i]+" ");
    }
    static void inputArray2d() {
        Console.Title = "023321712228徐泽枫";
        int n = 2, m = 3;
        int[,] arr = new int [n,m];
        for(int i = 0; i < n; i++) {
            for(int j=0; j < m; j++) {
                arr[i,j]= int.Parse(Console.ReadLine());
            }
        }
        for(int i = 0; i < n;i++) {
            for(int j=0; j < m;j++) {
                Console.Write(arr[i,j]+" ");
            }
            Console.WriteLine();
        }
    }
    static void Main(string[] args){
        Console.Title = "023321712228徐泽枫sy1 - 4 - 1";  //此处的学号姓名换成自己的学号姓名
        Console.WriteLine("Hello World!");
        Console.ReadKey();
    }
}