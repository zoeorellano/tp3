PImage op_art;
void setup() {
  size(800, 400);
  background(255);
  op_art = loadImage ("op_art.jpg");
}

void draw() {
  int filas = 10;
  int columnas = 10;
  float xInicio = 400;
float alto = height / float (filas);

  for (int a = 0; a < filas; a++) {
    float xActual = xInicio; // reinicio la posición x en cada fila

    for (int b = 0; b < columnas; b++) {
      //ancho de cada cuadrado según su posición en la columna
      float ancho = map (b, 0, columnas - 1, 50, 5);

     
      
      // alternar colores como tablero de ajedrez
      if ((a + b) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }

      // dibujo el cuadrado
      rect(xActual, a * alto, ancho, alto);

      // muevo la posición x para el próximo cuadrado
      xActual += ancho ;
    }
  }
}
