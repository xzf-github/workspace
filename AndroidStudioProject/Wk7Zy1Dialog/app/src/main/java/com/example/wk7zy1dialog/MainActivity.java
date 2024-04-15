package com.example.wk7zy1dialog;
import android.app.AlertDialog;
import android.content.DialogInterface;
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
    Button btn_1;
    Button btn_2;
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
        btn_1=findViewById(R.id.button_1);
        btn_2=findViewById(R.id.button_2);
        btn_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AlertDialog.Builder builder=new AlertDialog.Builder(MainActivity.this); 
                builder.setIcon(R.mipmap.ic_launcher_round);   
                builder.setTitle("温馨提示");  
                builder.setMessage("确定要退出吗？");  
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        finish();  
                    }
                });
                builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        
                    }
                });
                builder.create().show();
                btn_2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        AlertDialog.Builder builder=new AlertDialog.Builder(MainActivity.this); 
                        builder.setIcon(R.mipmap.ic_launcher_round);   
                        builder.setTitle("请选择城市");  
                        final String[] cities={"北京", "上海", "广州", "深圳"};

                        final TextView selectedCityTextView = new TextView(MainActivity.this);
                        selectedCityTextView.setTextSize(16); // 设置字体大小
                        selectedCityTextView.setPadding(10, 10, 10, 10); // 设置内边距
                        selectedCityTextView.setText("请选择一个城市"); // 初始文本

                        builder.setView(selectedCityTextView); // 将TextView添加到对话框中
                        builder.setSingleChoiceItems(cities, 0, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                selectedCityTextView.setText(cities[which]);
                            }
                        });
                        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                
                            }
                        });
                        builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                
                            }
                        });
                        builder.create().show();
                    }
                });
            }
        });
    }
}