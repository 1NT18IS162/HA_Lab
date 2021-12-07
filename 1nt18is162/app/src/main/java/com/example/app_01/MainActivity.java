package com.example.app_01;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText n,m;
    TextView res;
    Button sub;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        n= (EditText) findViewById(R.id.editTextNumberDecimal);
        m= (EditText) findViewById(R.id.editTextNumberDecimal2);
        sub=(Button) findViewById(R.id.button3);
        res=(TextView) findViewById(R.id.textView6);

       sub.setOnClickListener(new View.OnClickListener() {
           @Override
           public void onClick(View view) {
               int a = Integer.parseInt(n.getText().toString());
               int b = Integer.parseInt(m.getText().toString());
               int sum=a+b;
               res.setText(Integer.toString(sum));
               Intent i = new Intent(getApplicationContext(),act2.class);
               i.putExtra("Result",Integer.toString(sum));
               startActivity(i);
           }
       });
    }
}