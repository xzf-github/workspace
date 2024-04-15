package com.example.zscalculator;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {

    private TextView txt_result;
    private Button btn_0,btn_1,btn_2,btn_3,btn_4,btn_5,btn_6,btn_7,btn_8,btn_9,
            btn_jia, btn_jian,btn_cheng,btn_chu,btn_qing,btn_deng;
    private double num1 = 0, num2 = 0;//运算数
    private double result = 0;
    private Boolean isClickdeng = false;//判断点击事件
    private String op = "%";//运算符

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
        txt_result=findViewById(R.id.txt_result);
        btn_0 = (Button) findViewById(R.id.btn_0);
        btn_1 = (Button) findViewById(R.id.btn_1);
        btn_2 = (Button) findViewById(R.id.btn_2);
        btn_3 = (Button) findViewById(R.id.btn_3);
        btn_4 = (Button) findViewById(R.id.btn_4);
        btn_5 = (Button) findViewById(R.id.btn_5);
        btn_6 = (Button) findViewById(R.id.btn_6);
        btn_7 = findViewById(R.id.btn_7);
        btn_8 = findViewById(R.id.btn_8);
        btn_9 = (Button) findViewById(R.id.btn_9);
        btn_jia = (Button) findViewById(R.id.btn_jia);
        btn_jian = (Button) findViewById(R.id.btn_jian);
        btn_cheng = (Button) findViewById(R.id.btn_cheng);
        btn_chu = (Button) findViewById(R.id.btn_chu);
        btn_deng = (Button) findViewById(R.id.btn_deng);
        btn_qing = (Button) findViewById(R.id.btn_qing);

        btn_7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //按钮单击逻辑
                if(isClickdeng){//说明刚单击了=，上一个运算刚结束
                    txt_result.setText("");//重新计算，文本框清空
                    isClickdeng=false;//更改=按钮的状态
                }
                //第一种情况，单击7直接显示在文本控件里。第二种情况：先单击别的数字，再单击了7
                txt_result.setText(txt_result.getText().toString()+"7");
            }
        });
        btn_8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"8");
            }
        });
        btn_9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"9");
            }
        });

        btn_jia.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String st1=txt_result.getText().toString();
                if(st1.equals("")){
                    return;
                }
                num1=Double.parseDouble(st1);
                txt_result.setText("");
                op="+";
                isClickdeng=false;
            }
        });
        btn_4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"4");
            }
        });
        btn_5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"5");
            }
        });
        btn_6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"6");
            }
        });
        btn_jian.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String st1=txt_result.getText().toString();
                if(st1.equals("")){
                    return;
                }
                num1=Double.parseDouble(st1);
                txt_result.setText("");
                op="-";
                isClickdeng=false;
            }
        });
        btn_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"1");
            }
        });
        btn_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"2");
            }
        });
        btn_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"3");
            }
        });
        btn_cheng.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String st1=txt_result.getText().toString();
                if(st1.equals("")){
                    return;
                }
                num1=Double.parseDouble(st1);
                txt_result.setText("");
                op="*";
                isClickdeng=false;
            }
        });
        btn_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(isClickdeng){
                    txt_result.setText("");
                    isClickdeng=false;
                }
                txt_result.setText(txt_result.getText().toString()+"0");
            }
        });
        btn_qing.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txt_result.setText("");
            }
        });
        btn_deng.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String str2=txt_result.getText().toString();
                if(str2.equals("")){
                    return;
                }
                num2=Double.parseDouble(str2);
                txt_result.setText("");
                switch (op){
                    case "+":result=num1+num2;break;
                    case "-":result=num1-num2;break;
                    case "*":result=num1*num2;break;
                    case "/":result=num1/num2;break;
                    case "%":result=num2;break;
                    default:result=0.0;break;
                }
                txt_result.setText(result+"");
                op="%";
                isClickdeng=true;
            }
        });
        btn_chu.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String st1=txt_result.getText().toString();
                if(st1.equals("")){
                    return;
                }
                num1=Double.parseDouble(st1);
                txt_result.setText("");
                op="/";
                isClickdeng=false;
            }
        });
    }
}