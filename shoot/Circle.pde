class Circle{
  float x;
  float y;
  float r;
  float[] c = new float[3];
  
  Circle(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
    for(int i = 0; i < 3; i++){
     c[i] = random(256);
    }
  }
  
  void reset(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
    for(int i = 0; i < 3; i++){
     c[i] = random(256);
    }
  }
  
  void display(){
    ellipseMode(RADIUS);
    fill(c[0],c[1],c[2]);
    ellipse(x,y,r,r);
  }
  
  
   float d;
   boolean collision;
 
  boolean checkCollision(Bullet b){
   
   d = sqrt(sq(b.x-x)+sq(b.y-y));
   if(d <= (r+b.r)){
     r += 5;
     collision = true;
   }else{
    collision = false; 
   }
   return collision; 
  }
  
}