PShape  dino;
void  setup()  {
    size(500,  500);
    dino  =  createShape();
    dino.beginShape();
    dino.fill(255, 0, 0);
    dino.vertex(0, 100);
    dino.vertex(50, 0);
    dino.vertex(100, 100);
    dino.vertex(50, 50);
    dino.endShape(CLOSE);
}
void  draw()  {
    background(204);
    translate(mouseX-50,  mouseY-50);
    shape(dino,  0,  0);
}