package Lecture;


public class hasstatic{
	private static int x=100;
	public static void main(String args[]) {
		hasstatic hs1=new hasstatic();
		hs1.x++;
		hasstatic hs2=new hasstatic();
		hs2.x++;
		hs1=new hasstatic();
		hs1.x++;
		hasstatic.x--;
		System.out.println(hasstatic.x);
	}
}
