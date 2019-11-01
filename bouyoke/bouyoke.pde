int NUM = 100;
int[] y = new int[NUM];
int[] x = new int[NUM];
float[] dy = new float[NUM];
int j = 400;
int k = 790;
boolean owari = false;
int score = 0;

void setup() {
  size(800, 800); 
  for (int i = 0; i < NUM; i++) {
    //bar syoki iti
    y[i] = -i * 200;
    x[i] = (int)random(750);
  }  
  for (int i = 0; i < NUM; i++) {
    //bar no sokudo
    dy[i] = 2;
  }
}

void draw() {
  background(0, 0, 255);
  if(owari == true){
   background(0); 
   textSize(100);
   text("GAME OVER",100,400);
   fill(255,0,0);
   text("score"+score,200,500);
  }else{
  for (int i = 0; i < NUM; i++) {
    y[i] += dy[i];
    fill(255, 0, 0);
    rect(0, y[i], 800, 10);
    text(i+1, x[i], y[i]);
    //kuhaku
    noStroke();
    fill(0, 0, 255);
    rect(x[i], y[i], 50, 10);
    //atarihantei
    if(y[i]+10 == k || k == y[i]+9 || k == y[i]+8 || k == y[i]+7){
      if(x[i] <= j && j + 10 <= x[i] + 50){
      owari = false;
     }else{
       owari = true;
       score = i;
    }
    }
  }
  }
  //jiki
  fill(0, 255, 0);
  rect(j, k, 10, 10);

  if(keyPressed == true && key == 'd'){
  j += 5;
  }
  if(keyPressed == true && key == 'a') {
  j -= 5;
   }
  if(keyPressed == true && key == 'w') {
  k -= 5;
  }
  if(keyPressed == true && key == 's') {
  k += 5;
  }
  //kadou hanni
  if (j <= 0) j = 0;
  if (j >= 790) j = 790;
  if (k <= 0) k = 0;
  if (k >= 790) k = 790;
}