package LecturePractice;
interface DogState{
	void showState();
}
class hello implements DogState{
	public void showState() {
		System.out.println("小狗在打招呼");
	}
}
class play implements DogState{
	public void showState() {
		System.out.println("小狗在嬉戏");
	}
}
class fight implements DogState{
	public void showState() {
		System.out.println("小狗在打架");
	}
}
class sleep implements DogState{
	public void showState() {
		System.out.println("小狗在睡觉");
	}
}
class Dog{
	private DogState dogState;
	public Dog(DogState dogState) {
		this.dogState = dogState;
	}
	public void show() {
		dogState.showState();
	}
	public void setDogState(DogState dogState) {
		this.dogState = dogState;
	}
}
public class pa4_3 {
	public static void main(String[] args) {
		Dog dog = new Dog(new play());//匿名类对象
		dog.show();
		dog.setDogState(new sleep());
		dog.show();
		dog.setDogState(new hello());
		dog.show();
		dog.setDogState(new fight());
		dog.show();
	}
}
