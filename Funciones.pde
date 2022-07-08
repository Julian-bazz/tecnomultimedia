void Personaje() {
  fill(255, 0, 0);
  rect(0, personajePosY, 70, 70);
  fill(150, 0, 0);
  noStroke();
  rect(0, personajePosY, 10, 70);
  fill(255);
  stroke(0);
  ellipse(30, personaje2PosY, 20, 20);
  ellipse(60, personaje2PosY, 20, 20);
  fill(150, 100, 0);
  ellipse(35, personaje2PosY, 10, 10);
  ellipse(65, personaje2PosY, 10, 10);
  fill(0);
  ellipse(37, personaje2PosY, 5, 5);
  ellipse(67, personaje2PosY, 5, 5);
  rect(20, personaje3PosY, 25, 10);
  rect(50, personaje3PosY, 25, 10);
}

void proyectil() {
  fill(random(255), random(0), random(50));
  ellipse(proyectilPosX, array[1], 35, 35);
}

void Instrucciones() {
  background(0);  
  fill(255);
  textSize(80);
  text("Instrucciones", 260, 100);
  textSize(35);
  text("* Utiliza las letras 'W' y 'S' para moverte de arriba hacia \n abajo.", 50, 200);
  text("* Esquiva los proyectiles hasta que el contador llegue a 1000 \n para ganar la partida.", 50, 300);
  text("* Si un proyectil te alcanza pierdes la partida.", 50, 400);
  textSize(70);
  if (frameCount > 130) {
    fill(50, 255);
    rect(345, 480, 200, 70);
    fill(255);
    text("START", 360, 537);
  }
}

void Juego() {
  float perdiste = dist(70, personajePosY, proyectilPosX, array[1]);
  image(estrellas, 0, 0, 900, 600);
  Personaje();
  proyectil();
  textSize(40);
  text("Tiempo:" + frameCount, 700, 50);
  if (personajePosY <= 0) {
    personajePosY = 0;
    personaje2PosY = 25;
    personaje3PosY = 13;
  }
  if (personajePosY >= 540) {
    personajePosY = 540;
    personaje2PosY = 565;
    personaje3PosY = 553;
  }
  if (proyectilMovimiento) {
    proyectilPosX -=20;
  }
  if (proyectilPosX < -10) {
    proyectilPosX = 950;
    array[1] = random(590);
  }

  if (perdiste <= 35) {
    background(0);
    pantalla++;
    frameCount = 0;
  }
  if (frameCount == 1000) {
    pantalla = 4;
  }
}

void GameOver() {
  background(0);
  fill(255, 0, 0);
  textSize(150);
  text("PERDISTE", 175, 250);
  fill(50, 255);
  rect(298, 475, 300, 80);
  fill(255);
  textSize(70);
  text("REINICIAR", 300, 537);
}

void Winner() {
  background(0);
  fill(0, 255, 0);
  textSize(150);
  text("GANASTE", 200, ganastePosY);
  if (ganasteMovimiento) {
    ganastePosY--;
  }
  if (frameCount >= 150) {
    ganasteMovimiento = true;
  }
  if (ganastePosY == -50) {
    ganasteMovimiento = false;
    textSize(70);
    fill(255);
    text("Fin del juego", 280, 310);
    fill(50, 255);
    rect(298, 475, 300, 80);
    fill(255);
    textSize(70);
    text("REINICIAR", 300, 537);
  }
}
