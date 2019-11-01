class Start{
  int n;
  
  Start(int n0){
    n = n0;
  }
  
  void difficalty(){
    background(0); 
   fill(123,255,123);
   textSize(100);
   text("DIFFICALTY",100,200);
   text("h:HARD",100,400);
   text("n:NORMAL",100,500);
   text("e:EASY",100,600);
   textSize(50);
   text("push the key",200,700);
   if(keyPressed == true && key == 'h'){
     speed = HAR;
     hajimari = false;
   }else if(keyPressed == true && key == 'n'){
     speed = NOR; 
     hajimari = false;
   }else if(keyPressed == true && key == 'e'){
     speed = EAS;
     hajimari = false;
   }
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}