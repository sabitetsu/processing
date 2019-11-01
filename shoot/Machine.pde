class Machine{
  float x;
  float y;
  int n = 0;
  int on;
  Machine(float x0,float y0){
    x = x0;
    y = y0;
  }
  
  //表示する
  void display(){
   fill(0,255,0);
   rect(x,y,20,20);
   
  }
  //移動させる
  void move(){
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
  
}