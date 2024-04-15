package LecturePractice;
class Bank{
	int savedMoney;
	int year;
	double interest;
	double interestRate = 0.35;//默认利率为0.35
	public double computerInterest() {
		interest = year*interestRate*savedMoney;
		return interest;
	}
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
}
class ConstructionBank extends Bank{
	double year;
	public double computerInterest() {
		super.year = (int)year;
		int day = (int) ((year-(int)year)*1000);
		double yearInterest = super.computerInterest();
		double dayInterest = day*super.interestRate/12/30*savedMoney;
		interest = yearInterest + dayInterest;
		System.out.println(savedMoney+"本金存储在建设银行"+super.year+"年"+day+"天共产生"+interest+"元的利息");
		return interest;
	}
}
class BankOfDalian extends Bank{
	double year;
	public double computerInterest() {
		super.year = (int)year;
		int day = (int) ((year-(int)year)*1000);
		double yearInterest = super.computerInterest();
		double dayInterest = day*super.interestRate/12/30*0.9*savedMoney;
		interest = yearInterest + dayInterest;
		System.out.println(savedMoney+"本金存储在大连银行"+super.year+"年"+day+"天共产生"+interest+"元的利息");
		return interest;
	}
}
public class pa3_2 {
	public static void main(String[] args) {
		int money = 10000;//本金万元户!
		ConstructionBank bank0 = new ConstructionBank();
		bank0.savedMoney = money;
		bank0.year = 10.119;//十年活期
		bank0.setInterestRate(0.35);
		bank0.savedMoney += bank0.computerInterest();
		System.out.println("当前本息为:"+bank0.savedMoney+"元(恭喜你,没跑过通胀)");
	}
}
