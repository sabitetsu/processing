float wakuseiA = 0.0;
float eiseiA = 0.0;
float wakuseiB = 0.0;
float eiseiB = 0.0;

void  setup()  {
    size(500,  500);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  if(mousePressed){
   scale(1.3); 
  }else{
   scale(1.0); 
  }
  fill(255,0,0);
  ellipse(0, 0, 10,10); 
  
  rotate(wakuseiA);
  fill(254,254,3);
  ellipse(50,  50,  10,  10);
  
  pushMatrix();
    translate(50 , 50 );
    rotate(eiseiA);
    fill(255,100,60);
    ellipse(20,20,10,10);
   popMatrix();
   
   rotate(wakuseiB);
   fill(0,0,200);
   ellipse(100,100,40,40);
   
   pushMatrix();
   translate(100,100);
   rotate(eiseiB);
   fill(100,100,200);
   ellipse(50,50,10,10);
   popMatrix();

    
    wakuseiA  +=  0.01;
    eiseiA += 0.1;
    wakuseiB += 0.01;
    eiseiB += 0.1;
    
}