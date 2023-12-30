package LecturePractice;
public class Customer implements Runnable {  
    private Bank bank;  
    private int times;  
    private int current;  
    public Customer(Bank bank, int times) {  
        this.bank = bank;  
        this.times = times;  
        this.current = 0;  
    }  
    public void run() {  
        while (current < times) {  
            bank.deposit(100);  
            current++;  
        }  
    }  
}
