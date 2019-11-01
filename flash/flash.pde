float c = 0;
int mode = 0;
float s = 0;
float world = 50;
void setup() {
  fullScreen();
}

void draw() {
  switch(mode) {
  case 0:
    background(100);
    textSize(300);
    text("START", 200, 500);
    textSize(100);
    text("PUSH ENTER", 210, 700);
    break;
  case 1:

    if (c % 3 == 0) {
      background(random(240, 255), 0, 0);
    } else {
      background(0, 0, random(240, 255));
    }
    c++;
    break;
  case 2:
    background(0);
    textSize(300);
    s = c/60*100;
    s = round(s);
    s = s/100;
    text(s+"/s", 10, 500);
    if(world < s){
      world = s;
    }
    text("WR="+world+"/s", 10, 800);
    textSize(150);
        text("PUSH ENTER", 850, 1000);
    break;
  }
}

void keyReleased() {
  switch(mode) {
  case 0:
    if (key == ENTER) {
      mode = 1;
    }
    break;
  case 1:
    if (key == ENTER) {
      mode = 2;
    }
    break;
  case 2:
    if (key == ENTER) {
      mode = 0;
      c = 0;
    }
    break;
  }
}