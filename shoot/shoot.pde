Machine machine;
Circle[] circle = new Circle[50];
Bullet[] bullet = new Bullet[50];
Start start = new Start(1);

final int HAR = 3;
final int NOR = 2;
final int EAS = 1;
int speed;

void setup(){
  size(1600,800);
  for(int i = 0; i < 50; i++){
    circle[i] = new Circle(random(width,width+50),random(height),50);
    bullet[i] = new Bullet(width+50,i*20,10);
  }
  machine = new Machine(10,10);
}

int score = 0;
boolean owari = false;
boolean hajimari = true;

void draw(){
  if(hajimari == true){
    start.difficalty();
  }else{  
  background(100);
  if(owari == true){
   background(0); 
   textSize(100);
   text("GAME OVER",100,400);
   fill(255,0,0);
   text("score"+score,200,500);
  }else if(owari == false){
    machine.display();
    machine.move();
    switch(machine.on){
      case 1:
        machine.x += 5;
        break;     
      case 2:
        machine.x -= 5;
        break;
      case 3:
        machine.y -= 5;
        break;
      case 4:
        machine.y += 5;
        break;
    }
    if(machine.y <= 0){
     machine.y = 0; 
    }else if(machine.y >= height-20){
     machine.y = height - 20; 
    }
  
  for(int i = 0; i < 50; i++){
    circle[i].display();
    bullet[i].display();
    bullet[i].x += 10;
     for(int c = 0; c < 50; c++){
     circle[i].checkCollision(bullet[c]);
     }
    circle[i].x -= speed;
    if(circle[i].r >= 75){
     circle[i].reset(random(width,width+50),random(height),50); 
     score += 1;
     if(score % 100 == 0){
      speed += 1; 
     } 
    }
    if(circle[i].x <= 0){
      owari = true;
    }
  }
  }
  }
}


int n = 0;


void keyPressed(){
  if(key == 'z'){
   bullet[n].reset(machine.x+10,machine.y+10,10);
   n += 1;
    if(n >= 50){
     n = 0; 
    }
  }
}