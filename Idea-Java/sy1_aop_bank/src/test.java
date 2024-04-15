import com.Bank;
public class test {
    public static void main(String[] args) {
        Bank a=new Bank("001","a",2000);
        Bank b=new Bank("002","b",2000);
        a._deposit(200);
        a._withdraw(500);
        a._transfer(b,500);
    }
}
