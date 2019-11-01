int x = -400;
int y = -400;
int z = -400;
void setup() {
 size(800, 800, P3D);
 colorMode(RGB, 255);
}
float count = 0;
float step = 2;
float siz = 1; 
void draw() {
 background(0);
 lights(); // 3D オブジェクトに光を当てる
 translate(width/2,height/2,0);
 rotateX(PI/5 * count * 0.05);
 rotateY(PI/5 * count * 0.03);
 rotateZ(PI/5 * count * 0.01);
 //合体後大きくなる
 if(x >= 1){
  scale(siz);
  siz += 0.05;
 }
 //縦に移動
 pushMatrix();
 translate(x,0,0);
 fill(255,0,0);
 box(30,10,10);
 popMatrix();
 //横に移動
 pushMatrix();
 translate(0,y,0);
 fill(0,255,0);
 box(10,30,10);
 popMatrix(); 
 //奥行移動
 pushMatrix();
 translate(0,0,z);
 fill(0,0,255);
 box(10,10,30);
 popMatrix();
 
 if(x <= 1 || y <= 1 || z <= 1){
  x += 1; 
  y += 1;
  z += 1;
 } 
 count += step;
}