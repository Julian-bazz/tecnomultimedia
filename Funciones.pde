void cuadrado() {
  translate(width/2, height/2);
  for (i=0; i<40; i++) {
    rotate(map(mouseX, 0, width, PI/1, PI/80));    
    fill(random(255));
    int radio = (width/3) - i*5;
    rect(0, 0, radio, radio);
  }
}
