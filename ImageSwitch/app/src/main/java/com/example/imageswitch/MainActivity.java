package com.example.imageswitch;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button b1;
    ImageView v;

    int img[]={R.drawable.nmitimage2,R.drawable.nmitimahe4,R.drawable.nmitimage1};
    int i=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        v=(ImageView) findViewById(R.id.imageView7);
        b1=(Button) findViewById(R.id.button4);
        v.setImageResource(img[2]);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "You have clicked", Toast.LENGTH_SHORT).show();
                v.setImageResource(img[i%3]);
                i++;
            }
        });

    }
}