package com.example.app_01;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

public class act2 extends AppCompatActivity {
    TextView ans;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act2);
        ans=(TextView) findViewById(R.id.textView5);

        Bundle e=getIntent().getExtras();
        String a=e.getString("Result");
        Toast.makeText(getApplicationContext(),a, Toast.LENGTH_SHORT).show();
        ans.setText(a);


    }
}