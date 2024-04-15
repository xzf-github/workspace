package com.example.zy4calinder;

import android.os.Bundle;
import android.view.View;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import java.util.Calendar;
public class MainActivity extends AppCompatActivity {
    private DatePicker datePicker;
    private TextView txt_ysdate,txt_gghdate;
    private ImageView img_display;
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
        datePicker=findViewById(R.id.datePicker_1);
        txt_ysdate=findViewById(R.id.textView_1);
        txt_gghdate=findViewById(R.id.textView_2);
        img_display=findViewById(R.id.img_1);
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH); // 注意：Calendar中的月份是从0开始的
        int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
        datePicker.init(year, month, dayOfMonth, new DatePicker.OnDateChangedListener() {
            @Override
            public void onDateChanged(DatePicker datePicker, int i, int i1, int i2) {
                txt_gghdate.setText(i+"年"+(i1+1)+"月"+i2+"日");
                img_display.setVisibility(View.GONE);
                if((i1+1)==3&&i2==12) {
                    txt_gghdate.setText(i + "年" + (i1 + 1) + "月" + i2 + "日" + ",植树节");
                    img_display.setVisibility(View.VISIBLE);
                    img_display.setImageResource(R.drawable.zhishu);
                }else if((i1+1)==3&&i2==15){
                    txt_gghdate.setText(i+"年"+(i1+1)+"月"+i2+"日"+",国际消费者权益日");
                    img_display.setVisibility(View.VISIBLE);
                    img_display.setImageResource(R.drawable.xiaofei);
                }
            }
        });
    }
}