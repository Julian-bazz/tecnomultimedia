//Alumno: Julián Bazzana
//Número de Legajo: 92653/0


PImage titulo;
PImage coraline;
PImage boton;
PImage otraMadre;
PImage llave;
PImage laika;
PFont fuenteNueva;
int pantalla = 1;
int tituloPosY = 200;
int coralinePosY = 480;
int repartoPosY = 555;
int botonPosY = 420;
int otraMadrePosY = 500;
int principalesPosY = 600;
int secundariosPosY = 555;
int direccionPosY = 555;
int musicaPosY = 760;
int musicaPosY2 = 555;
int laikaPosY = 590;
int tam = 300;
int tamCoraline = 105;
boolean tituloMovimiento = false;
boolean coralineMovimiento = false;
boolean botonMovimiento = false;
boolean otraMadreMovimiento = false;
boolean repartoMovimiento = false;
boolean principalesMovimiento = false;
boolean secundariosMovimiento = false;
boolean direccionMovimiento = false;
boolean musicaMovimiento = false;
boolean musicaMovimiento2 = false;
boolean laikaMovimiento = false;
boolean rectAparece = true;
boolean rectAparece2 = true;
boolean rectAparece3 = true;
boolean rectAparece4 = true;
boolean triangleAparece = true;
boolean triangleAparece2 = true;
boolean triangleAparece3 = true;
boolean triangleAparece4 = true;



void setup() {
  size(400, 400);
  fuenteNueva = createFont("Coraline's Cat.ttf", 14);
  textFont(fuenteNueva);
  titulo = loadImage("Coraline.png");
  coraline = loadImage("Coraline amarilla.png");
  boton = loadImage("Boton.png");
  otraMadre = loadImage("Otra madre.png");
  llave = loadImage("Llave.png");
  laika = loadImage("Laika.png");
}


void draw() {
  ;
  background(0);
  if (pantalla == 1) {
    fill(255);
    rectMode(CENTER);
    if (rectAparece && frameCount > 130) {
      rect(200.5, 280, 40, 20);
    }
    fill(0);
    if (triangleAparece && frameCount > 130) {
      triangle(190, 275, 200, 285, 210, 275);
    }


    imageMode(CENTER);
    if (frameCount >= 70) {
      image(titulo, 200, tituloPosY, tam, tam);
      image(coraline, 350, coralinePosY, tamCoraline, tamCoraline);
    }

    fill(255);
    if (frameCount >= 70) {
      textSize(12);
      //text("x=" + mouseX + " y=" + mouseY, mouseX, mouseY);
      text("REPARTO", 300, repartoPosY, 300, 300);
      text("ELENCO PRINCIPAL\n Coraline Jones: Dakota Fanning\n Mel Jones, La otra madre: Teri Hatcher\n Charlie Jones, El otro padre: John Hodgman\n", 200, principalesPosY, 300, 300);
    }
    fill(255);
    if (rectAparece2 && repartoPosY == 200) {
      rect(200.5, 350, 25, 40);
    }
    fill(0);
    if (triangleAparece2 && repartoPosY == 200) {
      triangle(197, 360, 197, 339, 205, 350);
    }

    fill(0);
    if (tituloMovimiento) {
      tituloPosY--;
    }
    if (coralineMovimiento) {
      coralinePosY--;
    }
    if (repartoMovimiento) {
      repartoPosY--;
    }

    if (principalesMovimiento) {
      principalesPosY--;
    }
    if (repartoPosY == 200) {
      tituloMovimiento= false;
      coralineMovimiento= false;
      rectAparece = false;
      rectAparece2 = true;
      triangleAparece = false;
      triangleAparece2 = true;
      repartoMovimiento = false;
      principalesMovimiento = false;
    }
  } else if (pantalla == 2) {
    fill(255);
    text("ELENCO SECUNDARIO\n El gato: Keith David\n Wyborne Lovat: Robert Bailey Jr.\n Sergei Alexander Bobinsky: Ian McShane\n Miriam Forcible: Dawn French\n April Spink: Jennifer Saunders\n Los nenes: Aankha Neal, Hannah Kaiser, George Selick", 200, secundariosPosY, 300, 300);

    image(boton, 350, botonPosY, 50, 50);
    fill(255);
    if (rectAparece3 && secundariosPosY == 200) {
      rect(200.5, 355, 25, 40);
    }
    fill(0);
    if (triangleAparece3 && secundariosPosY == 200) {
      triangle(197, 365, 197, 344, 205, 355);
    }

    if (secundariosMovimiento) {
      secundariosPosY--;
    }
    if (secundariosPosY == 200) {
      secundariosMovimiento = false;
      botonMovimiento = false;
    }
    if (botonMovimiento) {
      botonPosY--;
    }
  } else if (pantalla == 3) {

    fill(225);
    text("DIRECCION\n Laika Studios\n Henry Selick\n Chris Butler", 200, direccionPosY, 300, 300);
    text("MUSICA\n Teri Hatcher\n They Migth Be\n Giants", 350, musicaPosY, 300, 300);
    fill(255);
    if (rectAparece4 && direccionPosY == 200) {
      rect(100, 300, 90, 115);
    }
    if (direccionMovimiento) {
      direccionPosY--;
    }
    if (musicaMovimiento) {
      musicaPosY--;
    }
    if (otraMadreMovimiento) {
      otraMadrePosY--;
    }
    image(otraMadre, 300, otraMadrePosY, 115, 140);
    fill(0);
    if (direccionPosY == 200) {
      direccionMovimiento = false;
      musicaMovimiento = false;
      otraMadreMovimiento = false;
      image(llave, 98, 300, 95, 90);
    }
  } else if (pantalla == 4) {
    fill(255);   
    text("MUSICA\n Kent Melton\n Bruno Coulais", 200, musicaPosY2, 300, 300);
    if (musicaPosY2 == 200) {
      musicaMovimiento2 = false;
      laikaMovimiento = false;     
      image(laika, 200, laikaPosY, 150, 100 );
    }
    if (musicaMovimiento2) {
      musicaPosY2--;
    }
    if (laikaMovimiento) {
      laikaPosY--;
    }
  }
}




void mouseClicked() {
  if (pantalla == 1) {
    if (mouseX > 180 && mouseX < 220 && 
      mouseY > 270 && mouseY < 290) {
      tituloMovimiento= true;
      coralineMovimiento= true;
      rectAparece = false;
      triangleAparece = false;
      repartoMovimiento = true;
      principalesMovimiento = true;
    }

    if (mouseX > 189 && mouseX < 213 && 
      mouseY > 331 && mouseY < 370) {
      pantalla++;
      secundariosMovimiento = true;
      botonMovimiento = true;
    }
  } else if (pantalla == 2) {
    if (mouseX > 189 && mouseX < 213 && 
      mouseY > 331 && mouseY < 370) {
      pantalla++;
      direccionMovimiento = true;
      musicaMovimiento = true;
      otraMadreMovimiento = true;
    }
  } else if (pantalla == 3) {
    if (mouseX > 54 && mouseX < 145 && 
      mouseY > 242 && mouseY < 357) {
      pantalla++;
      musicaMovimiento2 = true;
      laikaMovimiento = true;
    }
  }
}
