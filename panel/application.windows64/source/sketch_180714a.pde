void setup(){
  size(800,800);
  background(255);
}

  int one = -1;
  int two = -1;
  int three = -1;
  int four = -1;
  int five = 1;
  int six = -1;
  int seven = -1;
  int eight = -1;
  int nine = -1;
void draw(){
  background(255,0,255);
  rect(100,100,600,600);
  
  fill(255);
  if(one == 1){
   fill(0); 
  }
  rect(100,100,200,200);
  fill(255);
  if(two == 1){
   fill(0); 
  }
  rect(100,300,200,200);
  fill(255);
  if(three == 1){
   fill(0); 
  }
  rect(100,500,200,200);
  fill(255);
  if(four == 1){
   fill(0); 
  }
  rect(300,100,200,200);
  fill(255);
  if(five == 1){
   fill(0); 
  }
  rect(300,300,200,200);
  fill(255);
  if(six == 1){
   fill(0); 
  }
  rect(300,500,200,200);
  fill(255);
  if(seven == 1){
   fill(0); 
  }
  rect(500,100,200,200);
  fill(255);
  if(eight == 1){
   fill(0); 
  }
  rect(500,300,200,200);
  fill(255);
  if(nine == 1){
   fill(0); 
  }
  rect(500,500,200,200);
  
}

void mouseClicked(){
  if(100 <= mouseX && mouseX < 300){
    if(100 <= mouseY && mouseY < 300){
      one *= -1;
      two *= -1;
      four *= -1;
    }
    if(300 <= mouseY && mouseY < 500){
      two *= -1;
      one *= -1;
      three *= -1;
      five *= -1;
    }
    if(500 <= mouseY && mouseY <= 700){
      three *= -1;
      two *= -1;
      six *= -1;
    }
  }
  
  if(300 <= mouseX && mouseX < 500){
    if(100 <= mouseY && mouseY < 300){
      four *= -1;
      one *= -1;
      five *= -1;
      seven *= -1;
    }
    if(300 <= mouseY && mouseY < 500){
      five *= -1;
      two *= -1;
      four *= -1;
      eight *= -1;
      six *= -1;
    }
    if(500 <= mouseY && mouseY <= 700){
      six *= -1;
      three *= -1;
      five *= -1;
      nine *= -1;
    }
  }
  
  if(500 <= mouseX && mouseX <= 700){
    if(100 <= mouseY && mouseY < 300){
      seven *= -1;
      four *= -1;
      eight *= -1;
    }
    if(300 <= mouseY && mouseY < 500){
      eight *= -1;
      seven *= -1;
      five *= -1;
      nine *= -1;
    }
    if(500 <= mouseY && mouseY <= 700){
      nine *= -1;
      eight *= -1;
      six *= -1;
    }
  }
}
