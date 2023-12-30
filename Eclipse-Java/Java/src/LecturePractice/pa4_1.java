package LecturePractice;
interface Human{
	public void speak();
}
class Student0 implements Human{
	String name,id,school,major,hobby;
	public Student0(String name,String id,String school,String major,String hobby) {
		this.name = name;
		this.id = id;
		this.school = school;
		this.major = major;
		this.hobby = hobby;
	}
	public void speak() {
		System.out.printf("该学生的姓名:%s 学号:%s \n学校:%s 专业:%s 兴趣:%s\n"
				,name,id,school,major,hobby);
	}
}
class Worker implements Human{
	String name,workplace,job,hobby;
	public Worker(String name,String workplace,String job,String hobby) {
		this.name = name;
		this.workplace = workplace;
		this.job = job;
		this.hobby = hobby;
	}
	public void speak() {
		System.out.printf("该工人的姓名为:%s 工作单位:%s \n职务:%s 兴趣:%s"
				,name,workplace,job,hobby);
	}
}
public class pa4_1 {
	public static void main(String[] args) {
		System.out.println("防伪xzf");
		Student0 xzf = new Student0("徐泽枫", "023321712228", "湖北工程学院", "计算机科学与技术", "骑自行车,计算机,看电影,看科幻小说、人物传记");
		xzf.speak();
		Worker xf = new Worker("徐枫", "利尔化学", "化工总控工", "听音乐");
		xf.speak();
	}
}
