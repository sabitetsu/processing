int open1;
int open2;
int mode = 0;
final int HIGH = 9;
final int NOGAME = 5;
final int LOW = 1;
int highlow = LOW;
int ans;
int coin = 10;
int bet = 0;


void setup(){
  size(900,900);
}



void draw(){
  background(0,255,0);
  
  line(0,100,900,100);
  line(0,200,900,200);
  line(0,300,900,300);
  line(0,400,900,400);
  line(0,500,900,500);
  line(0,600,900,600);
  line(0,700,900,700);
  line(0,800,900,800);
  line(100,0,100,900);
  line(200,0,200,900);
  line(300,0,300,900);
  line(400,0,400,900);
  line(500,0,500,900);
  line(600,0,600,900);
  line(700,0,700,900);
  line(800,0,800,900);
  
  switch(mode){
    case 0://OP
    textSize(50);
    text(mode,50,50);
    textSize(250);
      text("START",50,450);

    break;
    
    case 1://Deck111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
    text(mode,50,50);
      textSize(50);
      text("coin",700,50);
      text(coin,700,100);
      fill(255,0,0);
      rect(650,200,200,300); //deck
      
      cardline();
      
      noFill();
      fill(100,0,0);
      ellipse(150,550,100,100);
      fill(0,0,100);
      textSize(50);
      text("Bet",110,570);
      fill(0);
      text("×" + bet,100,650);
    break;
    
    case 2://First and choise2222222222222222222222222222222222222222222222222222222222222222222222222222222222222
    text(mode,50,50);
      textSize(50);
      text("coin",700,50);
      text(coin,700,100);
      fill(100,0,0);
      rect(650,200,200,300);//deck
      cardline();
      
      fill(100,100,0);
      rect(300,100,300,500);
      fill(0);
      textSize(200);
      if(open1 == 10){
        text(open1,320,420);
      }else if(open1 == 11){
        text("J",450,420);
      }else if(open1 == 12){
        text("Q",380,420);
      }else if(open1 == 13){
        text("K",380,420);
      }else{
        text(open1,380,420);
      }

      fill(255,0,0);
      rect(200,700,200,100);
      rect(500,700,200,100);
      fill(0);
      textSize(100);
      text("high",192,780);
      text("low",520,780);
     
      betting();
      
      fill(255,0,0);
      ellipse(150,550,100,100);
      fill(0,0,255);
      textSize(50);
      text("Bet",110,570);
      fill(0);
      text("×" + bet,100,650);
      triangle(100,500,0,550,100,600);
      triangle(200,500,300,550,200,600);
      
    break;
    
    case 3://after choise33333333333333333333333333333333333333333333333333333333333333333333333333333
    text(mode,50,50);
      textSize(50);
      text("coin",700,50);
      text(coin,700,100);
      fill(255,0,0);
      rect(650,200,200,300); //deck
      cardline();
      fill(100,100,0);
      rect(50,50,200,300);
      fill(0);    
      textSize(150);
      if(open1 == 10){
        text(open1,50,250);
      }else if(open1 == 11){
        text("J",100,250);
      }else if(open1 == 12){
        text("Q",100,250);
      }else if(open1 == 13){
        text("K",100,250);
      }else{
        text(open1,100,250);
      }
      noFill();
      if(highlow == HIGH){
        text("high",300,800);
      }else if(highlow == LOW){
        text("low",320,800);
      }
      
      betting();
      
      fill(255,0,0);
      ellipse(150,550,100,100);
      fill(0,0,255);
      textSize(50);
      text("Bet",110,570);
      fill(0);
      text("×" + bet,100,650);
      triangle(100,500,0,550,100,600);
      triangle(200,500,300,550,200,600);
      
    break;
    
    case 4://Second and anser44444444444444444444444444444444444444444444444444444444444444444444444444
    text(mode,50,50);
      textSize(50);
      text("coin",700,50);
      text(coin,700,100);
      fill(100,0,0);
      rect(650,200,200,300); //deck
      cardline();
      fill(100,100,0);
      rect(50,50,200,300);
      fill(0);
      textSize(150);
      if(open1 == 10){
        text(open1,70,250);
      }else if(open1 == 11){
        text("J",100,250);
      }else if(open1 == 12){
        text("Q",100,250);
      }else if(open1 == 13){
        text("K",100,250);
      }else{
        text(open1,100,250);
      }
      noFill();
      if(highlow == HIGH){
        text("high",300,800);
      }else if(highlow == LOW){
        text("low",320,800);
      }
      fill(100,100,0);
      rect(300,100,300,500);
      fill(0);
      textSize(200);
      if(open2 == 10){
        text(open2,320,420);
      }else if(open2 == 11){
        text("J",450,420);
      }else if(open2 == 12){
        text("Q",380,420);
      }else if(open2 == 13){
        text("K",380,420);
      }else{
        text(open2,380,420);
      }
      noFill();
      
      if(open2 > open1){
        ans = HIGH;
      }else if(open2 < open1){
        ans = LOW;
      }else{
        ans = NOGAME;
      }
      
      if(highlow == ans){
        noFill();
        stroke(255,0,0);
        strokeWeight(5);
        ellipse(450,750,300,100);
        stroke(0);
        strokeWeight(1);
      }else if(ans == NOGAME){
        stroke(255,0,0);
        strokeWeight(5);
        fill(255,0,0);
        textSize(50);
        text("NOGAME",450,450);
        noFill();
        stroke(0);
        strokeWeight(1);
      }else{
        stroke(255,0,0);
        strokeWeight(5);
        line(300,700,600,800);
        line(300,800,600,700);
        stroke(0);
        strokeWeight(1);
      }
      fill(255,0,0);
      ellipse(150,550,100,100);
      fill(0,0,255);
      textSize(50);
      text("Bet",110,570);
      fill(0);
      text("×" + bet,100,650);
      
    break;
    
    case 5://ED55555555555555555555555555555555555555555555555555555555555555555555555555555
    textSize(50);
    fill(0);
    text(mode,50,50);
      textSize(150);
      text("GAME OVER",20,450);
      textSize(100);
      fill(255,50,100);
      text("THANK YOU",150,600);
      text("FOR PLAYING",120,700);
    break;
  }
}



void mouseReleased(){
  switch(mode){
    case 0:
    mode = 1;
    break;
    
    case 1:
    if(mouseX >= 650 && mouseX <= 850 && mouseY >= 200 && mouseY <= 500){
    mode = 2;
    open1 = int(random(1,14));
    open2 = int(random(1,14));
    bet = 1;
    coin -= 1;
    }
    break;
    
    case 2:
    if(mouseX >= 100 && mouseX <= 200 && mouseY >= 500 && mouseY <= 600){
      if(coin > 0){
        bet += 1;
        coin -= 1;
      }
    }
    if(mouseY >= 700 && mouseY <= 800){
      if(mouseX >= 200 && mouseX <= 400){
        highlow = HIGH;
        mode = 3;
      }
      if(mouseX >= 500 && mouseX <= 700){
        highlow = LOW;
        mode = 3;
      }
    }
    
    break;
    
    case 3:
    if(mouseX >= 100 && mouseX <= 200 && mouseY >= 500 && mouseY <= 600){
      if(coin > 0){
        bet += 1;
        coin -= 1;
      }
    }
    if(mouseX >= 650 && mouseX <= 850 && mouseY >= 200 && mouseY <= 500){
    mode = 4;
    
    }
    break;
    
    case 4:
    if(highlow == ans){
      coin += 2 * bet;
      bet = 0;
    }else if(ans == NOGAME){
      coin += bet;
      bet = 0;
    }else{
      bet = 0;
    }
    mode = 1;
    if(coin <= 0){
      mode = 5;
    }
    break;
    
    case 5:
    exit();
    
    break;
  }
  
}


void betting(){
  if(mousePressed){
        if(mouseY >= 500 && mouseY <= 600 ){
          if(mouseX >= 0 && mouseX <= 100){
            if(bet > 1){
            bet -= 1;
            coin += 1;
            }
          }else if(mouseX >= 200 && mouseX <= 300){
            if(coin > 0){
            bet += 1;
            coin -= 1;
            }
          }
        }
      }
}

void cardline(){
  line(800,200,850,250);
  line(750,200,850,300);
  line(700,200,850,350);
  line(650,200,850,400);
  line(650,250,850,450);
  line(650,300,850,500);
  line(650,350,800,500);
  line(650,400,750,500);
  line(650,450,700,500);
   
  line(650,250,700,200);
  line(650,300,750,200);
  line(650,350,800,200);
  line(650,400,850,200);
  line(650,450,850,250);
  line(650,500,850,300);
  line(700,500,850,350);
  line(750,500,850,400);
  line(800,500,850,450);
}