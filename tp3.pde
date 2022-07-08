//Alumno: Bazzana Julián
//Número de legajo: 92653/0
//https://www.youtube.com/watch?v=o7XnY8SAjnQ

PImage estrellas;
PFont fuenteNueva;
int cant = 2;
int pantalla = 1;
int personajePosY = 300;
int personaje2PosY = 325;
int personaje3PosY = 313;
int proyectilPosX = 950; 
int ganastePosY = 250;
float[] array;
boolean proyectilMovimiento = false;
boolean ganasteMovimiento = false;


void setup() {
  size(900, 600);
  fuenteNueva = createFont("Stardew Valley.ttf", 45);
  textFont(fuenteNueva);
  estrellas = loadImage("Estrellas.jpg");
  array = new float[cant];
  for (int i = 0; i < cant; i++) {
    array[i] = random(590);
  }
}

void draw() {


  if (pantalla == 1) {
    Instrucciones();
  }
  if (pantalla == 2) {
    Juego();
  }
  if (pantalla == 3) {
    GameOver();
  }
  if (pantalla == 4) {
    Winner();
  }
}

void keyPressed() {

  if (key == 's' || key == 'S') {
    personajePosY +=15;
    personaje2PosY +=15;
    personaje3PosY +=15;
  }

  if (key == 'w' || key == 'W') {
    personajePosY -=15;
    personaje2PosY -=15;
    personaje3PosY -=15;
  }
}

void mouseClicked() {
  if (pantalla == 1) {
    if (mouseX >= 345 && mouseX <= 544 && 
      mouseY >= 480 && mouseY <= 551 && frameCount >= 130) {
      pantalla++;
      proyectilMovimiento = true;
      frameCount = 0;
    }
  }

  if (pantalla == 3) {
    if (mouseX >=298  && mouseX <=596  && 
      mouseY >=475  && mouseY <=554  && frameCount >= 130) {
      pantalla--;
      proyectilPosX = 950;
      personajePosY = 300;
      personaje2PosY = 325;
      personaje3PosY = 313;
    }
  }

  if (pantalla == 4) {
    if (mouseX >=298  && mouseX <=596  && 
      mouseY >=475  && mouseY <=554  && frameCount >= 130) {
      pantalla = 2;
      frameCount = 0;
      proyectilPosX = 950;
      personajePosY = 300;
      personaje2PosY = 325;
      personaje3PosY = 313;
    }
  }
}
