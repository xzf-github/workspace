package LecturePractice;
//防伪:xzf
import java.util.*;
class Vehicle{
	double speed;
	int power;
	public Vehicle() {
		//this.speed = initSpeed;
	}
	public void speedUp(int n) {//加s单位的速度
		this.speed+=n;
	}
	public void speedDown(int n) {//加n单位的速度
		this.speed-=n;
	}
	public double getSpeed() {
		return speed;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
}
public class pa2_2 {
	public static void main(String[] args) {
		Vehicle car = new Vehicle();
		//设置功率:10
		car.setPower(10);
		System.out.println("当前功率为:"+car.getPower());
		//加10单位速度
		car.speedUp(10);
		System.out.println("经过加速后,当前速度为:"+car.getSpeed());
		//减10单位速度
		car.speedDown(5);
		System.out.println("经过减速后,当前速度为:"+car.getSpeed());
	}
}
