package LecturePractice;
import java.io.*;
import java.util.*;
public class pa8_2 {
	public static void main(String[] args) {
		try {//读取文件数据
			FileReader fileReader=new FileReader("text8.txt");
			BufferedReader bufferedReader=new BufferedReader(fileReader);
			Map<String,Integer>prices=new HashMap<>();//哈希大法好
			String s;//防伪防盗 xzf
			while((s=bufferedReader.readLine())!=null){
				//读每行,以","分隔每个商品的名称和价格
				String tokens[]=s.split(",");
				String item=tokens[0];
				int priceOfItem=Integer.parseInt(tokens[1].replaceAll("\\D", ""));
				prices.put(item,priceOfItem);
			}
			bufferedReader.close();
			//数据已获取,开始计算
			double sum=0;
			for (Map.Entry<String, Integer> entry : prices.entrySet()) {
				sum += entry.getValue();
			}
			double ave=sum/prices.size();
			//计算完毕,输出
			System.out.println("ItemList: "+prices.keySet());
			System.out.println("AveragePrice: "+ave+" RMB");
		}catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}