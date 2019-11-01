int[] bar1 = {1,2,3,4,5};
int[] bar2 = {0,0,0,0,0};
int[] bar3 = {0,0,0,0,0};
int choiseBar = 1;
int catchBlock = 0;
boolean keep = false;

void setup(){
  size(900,900);
}

void draw(){
  background(255);
  fill(255,0,0);
  switch(choiseBar){
    case 1:
      triangle(200,100,175,50,225,50);
      if(keep == true){
        text(str(catchBlock),180,50);
      }
    break;
    case 2:
      triangle(500,100,475,50,525,50);
      if(keep == true){
        text(str(catchBlock),480,50);
      }
    break;
    case 3:
      triangle(800,100,775,50,825,50);
      if(keep == true){
        text(str(catchBlock),780,50);
      }
    break;
  }
  textSize(50);
  text(str(bar1[0]),180,200);
  text(str(bar1[1]),180,300);
  text(str(bar1[2]),180,400);
  text(str(bar1[3]),180,500);
  text(str(bar1[4]),180,600);
  text(str(bar2[0]),480,200);
  text(str(bar2[1]),480,300);
  text(str(bar2[2]),480,400);
  text(str(bar2[3]),480,500);
  text(str(bar2[4]),480,600);
  text(str(bar3[0]),780,200);
  text(str(bar3[1]),780,300);
  text(str(bar3[2]),780,400);
  text(str(bar3[3]),780,500);
  text(str(bar3[4]),780,600);
}

void keyReleased(){
  if(key == CODED){
    if(keyCode == RIGHT){
      choiseBar += 1;
    }else if(keyCode == LEFT){
      choiseBar -= 1;
    }
    
    if(choiseBar < 1){
      choiseBar = 3;
    }else if(choiseBar > 3){
      choiseBar = 1;
    }

  }
  
  if(key == ' '){
    if(keep == true){
    switch(choiseBar){
      case 1:
        if(bar1[0] == 0 || bar1[0] > catchBlock){
        bar1[4] = bar1[3];
        bar1[3] = bar1[2];
        bar1[2] = bar1[1];
        bar1[1] = bar1[0];
        bar1[0] = catchBlock;
        catchBlock = 0;
        keep = false;
        }else{
          strokeWeight(50);
          line(100,100,800,800);
          line(800,100,100,800);
          strokeWeight(1);
        }
      break;
      
      case 2:
        if(bar2[0] == 0 || bar2[0] > catchBlock){
        bar2[4] = bar2[3];
        bar2[3] = bar2[2];
        bar2[2] = bar2[1];
        bar2[1] = bar2[0];
        bar2[0] = catchBlock;
        catchBlock = 0;
        keep = false;
        }else{
          strokeWeight(50);
          line(100,100,800,800);
          line(800,100,100,800);
          strokeWeight(1);
        }
      break;
      
      case 3:
        if(bar3[0] == 0 || bar3[0] > catchBlock){
        bar3[4] = bar3[3];
        bar3[3] = bar3[2];
        bar3[2] = bar3[1];
        bar3[1] = bar3[0];
        bar3[0] = catchBlock;
        catchBlock = 0;
        keep = false;
        }else{
          strokeWeight(50);
          line(100,100,800,800);
          line(800,100,100,800);
          strokeWeight(1);
        }
      break;
    }
    }else if(keep == false){
      switch(choiseBar){
      case 1:
        catchBlock = bar1[0];
        bar1[0] = bar1[1];
        bar1[1] = bar1[2];
        bar1[2] = bar1[3];
        bar1[3] = bar1[4];
        bar1[4] = 0;
      break;
      
      case 2:
        catchBlock = bar2[0];
        bar2[0] = bar2[1];
        bar2[1] = bar2[2];
        bar2[2] = bar2[3];
        bar2[3] = bar2[4];
        bar2[4] = 0;
      break;
      
      case 3:
        catchBlock = bar3[0];
        bar3[0] = bar3[1];
        bar3[1] = bar3[2];
        bar3[2] = bar3[3];
        bar3[3] = bar3[4];
        bar3[4] = 0;
      break;
      }
      keep = true;
    }
  }
  
}
