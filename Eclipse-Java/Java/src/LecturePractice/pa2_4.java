package LecturePractice;
class Village{
	static int waterAmount;
	String name;
	public Village(String name) {
		this.name = name;
	}
	public static int getWaterAmount() {
		return waterAmount;
	}
	public static void setWaterAmount(int n) {
		waterAmount = n;
	}
	public void drinkWater(int n) {
		if(waterAmount-n>0)waterAmount-=n;
		else System.out.println("井水量不足,请重新调整用水量,剩余水量为:"+getWaterAmount());
	}
}
public class pa2_4 {
	public static void main(String[] args) {
		Village a = new Village("Earth");
		Village b = new Village("Mars");
		a.setWaterAmount(100);//初始化井水量
		System.out.println("当前井水量为:"+a.getWaterAmount());
		a.drinkWater(50);//地球村使用了50单位的水!
		System.out.println("剩余井水量为:"+b.getWaterAmount());
	}
}
