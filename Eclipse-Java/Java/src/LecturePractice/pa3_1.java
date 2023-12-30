package LecturePractice;

import java.util.jar.Attributes.Name;

abstract class Shape{
	protected String name;
	public Shape(String name) {
		this.name = name;
	}
	public abstract double calArea(); 
}
class Circle extends Shape{
	double r;
	public Circle(String name,double r){
		super(name);
		this.r = r;
	}
	public double calArea() {
		return 3.14*r*r;
	}
	public double calCircum() {
		return 2*3.14*r;
	}
}
class Trapezoid extends Shape{
	double top,bottom,height;
	public Trapezoid(String name,double top,double bottom,double height){
		super(name);
		this.top=top;
		this.bottom=bottom;
		this.height=height;
	}
	public double calArea() {
		return (top+bottom)*height/2;
	}
}
class Triangle extends Shape{
	double a,b,c;
	public Triangle(String name,double a,double b,double c){
		super(name);
		this.a=a;
		this.b=b;
		this.c=c;
	}
	public double calArea() {//海伦公式求三角形面积
		double p=(a+b+c)/2;
		return Math.sqrt(p*(p-a)*(p-b)*(p-c));
	}
	public double calCircum() {
		return a+b+c;
	}
}
public class pa3_1 {
	public static void main(String[] args) {
		Shape object = new Circle("圆", 10);
		System.out.println("该图形为:"+object.name+" 其面积为:"+object.calArea()+" 周长为:"+((Circle) object).calCircum());
		object = new Triangle("无规则三角形", 4, 7, 9);
		System.out.println("该图形为:"+object.name+" 其面积为:"+object.calArea()+" 周长为:"+((Triangle) object).calCircum());
		object = new Trapezoid("矩形", 3, 4, 5);
		System.out.println("该图形为:"+object.name+" 其面积为:"+object.calArea());
	}
}
