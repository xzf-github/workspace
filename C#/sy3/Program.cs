// See https://aka.ms/new-console-template for more information

using System.Drawing;

public class Person {
    private int age;
    public int Age {
        get {
            return age;
        }
        set {
            if (value >= 0 && value <= 130) {
                age = value;
                Console.WriteLine("输入正确!\n字段age={0}",age);
            }
            else {Console.WriteLine("输入年龄必须在0至130之间!");}
        }
    }
}
public class Rectangle {

    private double length;
    private double width;
 
    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }
    public double Area() {
        return length * width;
    }
    public double GetLength() {
        return length;
    }
    public double GetWidth() {
        return width;
    }
}

class Program {
    static void t1() {
        Person person = new Person();
        for (int i = 0; i < 2; i++) {
            Console.WriteLine("请输入年龄");
            int age = int.Parse(Console.ReadLine());
            person.Age = age;
        }
    }
    static void t2() {
        Rectangle rectangle = new Rectangle(10, 20);
        Console.WriteLine("Length: " + rectangle.GetLength());
        Console.WriteLine("Width: " + rectangle.GetWidth());
        Console.WriteLine("Area: " + rectangle.Area());
    }
    static int Add(ref int x, int y,out int z) {
        z = x + y;
        return z;
    }
    static void t3() {
        int x = 5;
        int y = 3;
        //Add(ref x, y);
        Console.WriteLine("调用add函数后,变量x的值为: " + x);
    }
    static void t4() {
        int x = 5;
        int y = 3;
        int z;
        //Add(ref x, y, out z);
        //Console.WriteLine("调用add函数后,变量z的值为: " + z);
    }
    static void t5() {
        Console.WriteLine("两整数之和: " + Add(5, 3));
        Console.WriteLine("整数和浮点数之和: " + Add(10, 5.5));
        Console.WriteLine("三整数之和: " + Add(7, 9, 12));
    }
    static int Add(int a, int b) {
        return a + b;
    }
    static double Add(int a, double b) {
        return a + b;
    }
    static int Add(int a, int b, int c) {
        return a + b + c;
    }
    static void Main(string[] args) {
        Console.Title = "023321712228徐泽枫";
        t1();
        Console.ReadKey();
    }
}