void setup(){
  size(950, 550);
}

float w = 50, h = w, start = PI/4, stop = 2*PI-start;
float x = 475, y = 275;
int kuti = 0;
int on = 0; 

void draw(){
  background(0, 0, 255);
  stroke(0, 0, 0);
  strokeWeight(4);
  fill(0);
  rect(50,50,400,200);
  rect(50,300,400,200);
  rect(500,50,400,200);
  rect(500,300,400,200);
  fill(255, 255, 0);
  
  
  switch(on){
   case 1:
     x += 5;
    if(kuti <= 10){
      ellipse(x, y, w, h);
      line(x, y, x + w/2, y);
    }else{ 
      arc(x, y, w, h, start, stop);
      line(x, y, x + cos(start) * w/2, y + sin(start) * w/2);
      line(x, y, x + cos(start) * w/2, y - sin(start) * w/2);
    }
     break;
   case 2:
     x -= 5;
     if(kuti <= 10){
      ellipse(x, y, w, h);
      line(x, y, x - w/2, y);
    }else{ 
      arc(x, y, w, h, 5*PI/4, 2*PI+3*PI/4);
      line(x, y, x - cos(start) * w/2, y + sin(start) * w/2);
      line(x, y, x - cos(start) * w/2, y - sin(start) * w/2);
    }
     break;
   case 3:
     y -= 5;
     if(kuti <= 10){
      ellipse(x, y, w, h);
      line(x, y, x, y - h/2);
    }else{ 
      arc(x, y, w, h, -PI/4, 5*PI/4);
      line(x, y, x + cos(start) * w/2, y - sin(start) * w/2);
      line(x, y, x - cos(start) * w/2, y - sin(start) * w/2);
    }
     break;
   case 4:
     y += 5;
     if(kuti <= 10){
      ellipse(x, y, w, h);
      line(x, y, x, y + h/2);
    }else{ 
      arc(x, y, w, h, PI/4*3, 2*PI+PI/4);
      line(x, y, x + cos(start) * w/2, y + sin(start) * w/2);
      line(x, y, x - cos(start) * w/2, y + sin(start) * w/2);
    }
     
     break;
   default:
     ellipse(x, y, w, h);
     line(x, y, x + w/2, y);
  }
  //枠判定
  if(x + w/2 >= width){
   x = width - w/2; 
  }else if(x - w/2 <= 0){
   x = 0 + w/2; 
  }
  if(y + h/2 >= height){
   y = height - h/2; 
  }else if(y - h/2 <= 0){
   y = 0 + h/2; 
  }
  
  //四角判定
  if(y + h/2 > 50 && y - h/2 < 250 || y + h/2 > 300 && y - h/2 < 500){
   if(x + w/2 > 50 && x + w/2 < 450 ){
     x = 50 - w/2;
   }else if(x + w/2 > 500 && x + w/2 < 750){
     x = 500 - w/2; 
   }else if(x - w/2 < 450 && x > 400){
     x = 450 + w/2; 
   }
  }
  
  
  kuti += 1;
  if(kuti >= 20){
   kuti = 0; 
  }
}

void keyPressed(){

  switch(keyCode){
   case RIGHT:
     on = 1;
     break;
   case LEFT:
     on = 2;
     break;
   case UP:
     on = 3;
     break;
   case DOWN:
     on = 4;
     break;
  }
  
}