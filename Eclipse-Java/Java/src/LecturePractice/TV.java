package LecturePractice;

public class TV {
	int channel;
	public int getChannel() {
		return channel;
	}
	public void setChannel(int num) {//换台
		this.channel = num;
	}
	public void showProgram(){
		switch(channel) {
			case 1:System.out.println("这里是CCTV-1");
				break;
			case 2:System.out.println("这里是CCTV-2");
				break;
			case 3:System.out.println("这里是CCTV-3");
				break;
			default:System.out.println("暂未开通此频道,请先拿个国一再来吧");
		}
	}
}
