//Alumno: Julián Bazzana
//Número de Legajo: 92653/0
//Video explicativo: https://www.youtube.com/watch?v=M4LQx8QldOk


int i=0;

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(random(255));
  cuadrado();
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    mouseX=0;
    mouseY=0;
  }
}
