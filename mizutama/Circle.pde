class Circle{
  float x;
  float y;
  float r;
  float[] c = new float[4];
  
  Circle(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
    for(int i = 0; i < 4; i++){
     c[i] = random(256);
    }
  }
  
  void reset(float x0, float y0, float r0){
    x = x0;
    y = y0;
    r = r0;
    for(int i = 0; i < 4; i++){
     c[i] = random(256);
    }
  }
  
  void display(){
    ellipseMode(RADIUS);
    fill(c[0],c[1],c[2],c[3]);
    ellipse(x,y,r,r);
  }
  
  
}