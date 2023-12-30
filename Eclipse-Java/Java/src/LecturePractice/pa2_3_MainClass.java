package LecturePractice;

public class pa2_3_MainClass {
	public static void main(String[] args) {
		TV huawei = new TV();//新建华为电视
		Family room104 = new Family();//新建寝室104
		room104.buyTV(huawei);//给寝室买个华为电视
		room104.remoteControl(1);//换频道1
		System.out.println("当前正在观看频道"+room104.homeTV.getChannel());
		room104.seeTV();//看中央1套
	}
}