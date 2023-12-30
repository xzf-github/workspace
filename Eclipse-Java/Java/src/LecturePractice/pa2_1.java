package LecturePractice;
import java.util.*;
class Student{
	long studentID;
	int classID;
	String name;
	String sex;
	int age;
	public Student(long studentID,int classID,String name,String sex,int age) {
		this.studentID = studentID;
		this.classID = classID;
		this.name = name;
		this.sex = sex;
		this.age = age;
	}
	public String toString() {
		return "学号:"+studentID+" 班号:"+classID+" 姓名:"+name+" 性别:"+sex+" 年龄:"+age;
	}
	public long getStudentID() {
		return studentID;
	}
	public void setStudentID(long studentID) {
		this.studentID = studentID;
	}
	public int getClassID() {
		return classID;
	}
	public void setClassID(int classID) {
		this.classID = classID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
public class pa2_1 {
	public static void main(String[] args) {
		Student stu1 = new Student(1, 1, "张三", "男", 20);//构造方法设置属性
		Student stu2 = new Student(0, 0, null, null, 0);
		stu2.setStudentID(2);//setter方法设置属性
		stu2.setClassID(1);
		stu2.setName("李四");
		stu2.setSex("男");
		stu2.setAge(21);
		System.out.println(stu1.toString());
		System.out.println(stu2.toString());
	}

}
