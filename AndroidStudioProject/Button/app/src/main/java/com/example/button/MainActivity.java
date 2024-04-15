package com.example.button;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {
    private EditText ed_name ,ed_pwd ;
    private Button btn_login,btn_cancle;
    private TextView txt_display;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ed_name=findViewById(R.id.editTextText);
        ed_pwd=findViewById(R.id.editTextText2);
        btn_login=findViewById(R.id.button);
        btn_cancle=findViewById(R.id.button2);
        txt_display=findViewById(R.id.textView);
        btn_login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String strname=ed_name.getText().toString();
                String strpwd=ed_pwd.getText().toString();
                txt_display.setVisibility(View.VISIBLE);
                txt_display.setText("我盗取了你的信息\n用户名:"+strname+"\n密码为:"+strpwd);
            }
        });
        btn_cancle.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txt_display.setVisibility(View.GONE);
                ed_name.setText("");
                ed_pwd.setText("");
            }
        });
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

    }
}