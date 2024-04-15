package com;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
public aspect LogAopAspect {
    @Before("execution(* com.Bank._*(..))")
    public void transactionType(JoinPoint joinPoint){
        String methodName=joinPoint.getSignature().getName();
        System.out.println("交易类型: "+ methodName);
    }
    @After("execution(* com.Bank._*(..))")
    public void accountInfo(JoinPoint joinPoint){
        Bank bank= (Bank) joinPoint.getTarget();
        System.out.println("账户名称: "+bank.getAccountName()+"\n余额: "+bank.getBalance());
    }
}
