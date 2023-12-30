package LecturePractice;

public class Family {
	TV homeTV;
	public void buyTV(TV tv) {
		this.homeTV = tv;
	}
	public void remoteControl(int num) {
		homeTV.setChannel(num);
	}
	public void seeTV() {
		homeTV.showProgram();
	}
}