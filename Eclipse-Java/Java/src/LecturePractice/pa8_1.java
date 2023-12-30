package LecturePractice;
import java.io.*;
import java.util.*;

import javax.sound.sampled.Line;
/*从键盘输入多行字符串（以单行“#”结束输入），
 *存入指定文件，再从文件中读取内容输出到屏幕。
 */
public class pa8_1 {
	public static void main(String[] args) {
		try {
			//读入多行
			Scanner sc = new Scanner(System.in);
			while(sc.hasNextLine()) {
				String s=sc.nextLine();
				if(s.equals("#")) {//以单行#结束输出
					break;
				}
				//输入存入文件
				FileWriter writer=new FileWriter("text8.txt",true);
				writer.write(s+"\n");
				writer.close();
			}
			//读取文件内容输出
			FileReader reader=new FileReader("text8.txt");
			BufferedReader bufferedReader=new BufferedReader(reader);
			String	s;
			while((s=bufferedReader.readLine())!=null) {
				System.out.println(s);
			}
			bufferedReader.close();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
}
