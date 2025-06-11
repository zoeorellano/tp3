void setup() {
  size(800, 400);  
  background(255); 
}

void draw() {
  int filas = 10;       
  int columnas = 10;   
  float xInicio = 400;
  float xRestante = 675;
  

  for (int a = 0; a < filas; a++) {
    float xActual = xInicio; // reinicio la posición x en cada fila

    for (int b = 0; b < columnas; b++) {
      // Defino el ancho de cada cuadrado según su posición en la columna
      float ancho = 0;

      if (b == 0) {
        ancho = 50;
      } else if (b == 1) {
        ancho = 45;
      } else if (b == 2) {
        ancho = 40;
      } else if (b == 3) {
        ancho = 35;
      } else if (b == 4) {
        ancho = 30;
      } else if (b == 5) {
        ancho = 25;
      } else if (b == 6) {
        ancho = 20;
      } else if (b == 7) {
        ancho = 15;
      } else if (b == 8) {
        ancho = 10;
      } else if (b == 9) {
        ancho = 5;
      }
      // desde la distorsión a 800 x
      if (xActual < 800){
        rect (xRestante, (a * 50) , ancho, 50);
      }
      
      // alternar colores como tablero de ajedrez
      if ((a + b) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }

      // dibujo el cuadrado
      rect(xActual, a * 50, ancho, 50);

      // muevo la posición x para el próximo cuadrado
      xActual += ancho ;
    }
  }
}
