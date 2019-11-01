import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_________ extends PApplet {

float c = 0;
int mode = 0;
float s = 0;
float world = 0;
public void setup() {
  
}

public void draw() {
  switch(mode) {
  case 0:
    background(100);
    textSize(300);
    text("START", 200, 500);
    textSize(100);
    text("PUSH ENTER", 210, 700);
    break;
  case 1:

    if (c % 3 == 0) {
      background(random(240, 255), 0, 0);
    } else {
      background(0, 0, random(240, 255));
    }
    c++;
    break;
  case 2:
    background(0);
    textSize(300);
    s = c/60*100;
    s = round(s);
    s = s/100;
    text(s+"/s", 10, 500);
    if(world < s){
      world = s;
    }
    text("WR="+world+"/s", 10, 800);
    textSize(150);
        text("PUSH ENTER", 850, 1000);
    break;
  }
}

public void keyReleased() {
  switch(mode) {
  case 0:
    if (key == ENTER) {
      mode = 1;
    }
    break;
  case 1:
    if (key == ENTER) {
      mode = 2;
    }
    break;
  case 2:
    if (key == ENTER) {
      mode = 0;
      c = 0;
    }
    break;
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "sketch_________" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
