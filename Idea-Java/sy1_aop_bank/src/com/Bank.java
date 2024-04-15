package com;

public class Bank {
    String id;
    String accountName;
    double balance;

    public Bank(String id, String accountName, double balance) {
        this.id = id;
        this.accountName = accountName;
        this.balance = balance;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public void _deposit(double amount) {
        this.balance += amount;
    }

    public void _withdraw(double amount) {
        if (amount > this.balance) {
            throw new RuntimeException("Insufficient funds");
        }
        this.balance -= amount;
    }
    public void _transfer(Bank toBank, double amount) {
        if (amount > this.balance) {
            throw new RuntimeException("Insufficient funds");
        }
        this.setBalance(this.balance-amount);
        toBank.setBalance(this.balance+amount);
    }
}
