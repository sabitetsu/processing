class Bullet{
  float x;
  float y;
  float r;
  
  Bullet(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
  }
  
  void reset(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
  }
  
  
  void display(){
    ellipseMode(RADIUS);
    fill(0);
    noStroke();
    ellipse(x,y,r*2,r);
  }
  
  void fire(){
   if(keyPressed == true && key == 'z'){
      bullet[n].reset(machine.x+10,machine.y+10,r);
      n += 1;
       if(n >= 10){
        n = 0; 
       }
      } 
    
  }
  
  
  
  
}