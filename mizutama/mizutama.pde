Circle[] circle = new Circle[10];

void setup(){
  size(400,400);
  for(int i = 0; i < 10; i++){
    circle[i] = new Circle(random(width),random(height),random(100));
    noStroke();
  }
}

void draw(){
  background(255);
  for(int i = 0; i < 10; i++){
    circle[i].display();
    circle[i].r -= 0.5;
    circle[i].c[3] -= 0.5;
    if(circle[i].r <= 0 || circle[i].c[3] <= 0){
     circle[i].reset(random(width),random(height),random(100)); 
    }
  }
}