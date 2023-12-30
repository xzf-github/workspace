package LecturePractice;
public class Bank {  
    private double count = 0;  
  
    public synchronized void deposit(double amount) {  
        while (count + amount > 1000) {  
            try {  
                wait();  
            } catch (InterruptedException e) {  
                Thread.currentThread().interrupt();  
            }  
        }  
        count += amount;  
        System.out.println("Deposit: " + amount + ", Total: " + count);  
        notifyAll();  
    }  
}