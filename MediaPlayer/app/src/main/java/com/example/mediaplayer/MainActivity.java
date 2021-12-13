package com.example.mediaplayer;

import androidx.appcompat.app.AppCompatActivity;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;

public class MainActivity extends AppCompatActivity {
    MediaPlayer player,newplayer;
    MediaPlayer newobj(){
        newplayer=MediaPlayer.create(this,R.raw.cotb);
        return newplayer;
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        int range= 10000;
        ImageButton forward= (ImageButton) findViewById(R.id.fwd);
        ImageButton rewind=(ImageButton)  findViewById(R.id.rew);
        ImageButton stop=(ImageButton) findViewById(R.id.stop);
        ImageButton pause=(ImageButton) findViewById(R.id.pause);
        ImageButton play=(ImageButton) findViewById(R.id.play);
        ImageButton revert=(ImageButton) findViewById(R.id.rev);
        EditText text1=(EditText) findViewById(R.id.Title);



        player=newobj();
        text1.setText("cotb.mp3");

        play.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                player.start();
            }
        });
        pause.setOnClickListener((new View.OnClickListener(){
            @Override
            public void onClick(View view){
                player.pause();
            }
        }));

        stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                player.stop();
                player=newobj();
            }
        });

        forward.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int time= player.getCurrentPosition();
                int total=player.getDuration();
                if(time+range<total){
                    player.seekTo(time+range);
                }
            }
        });
        rewind.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int time= player.getCurrentPosition();
                int total=player.getDuration();
                if(time-range>0){
                    player.seekTo(time-range);
                }
            }
        });

        revert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                player.reset();
                player=newobj();
                player.start();
            }
        });


    }
}