//Fernandez Sanabria Abril Eugenia
//legajo: 122696/3
//comision 3 TT
//profe trate de ser lo mas breve posible, recorte partes y  explique lo mas que pude por el tiempo me pase un poquitito
//https://youtu.be/Ga8rultyXgs?si=XSFy9Zdcr2oavBt1

//variables globales
int filas = 8;
int tam = 8; 
int tamX, tamY;
PImage miobra;
int modoColor = 0;     
float variacion = 0;   
boolean cortarefec = true;
void setup() {
  size(800, 400);
  miobra = loadImage("14.jpg");

  tamX = 400 / 8;  // Ancho
  tamY = 400 / 8;   // Alto
}

void draw() {
  background(255);
  
 
  image(miobra, 0, 0, 400, 400);

 //funcion propia con parametros(le pasamos la posición X e Y)
  dibujartabla(418, 7); 
}

//funciones propias

//funcion propia con parametros que no retorna un valor
void dibujartabla(int x, int y) {
  //translate
  pushMatrix();
  translate(x, y);

  // grosor de la linea con efecto 
  float grosor = 3; 
  
  //solo si el mouse esta sobre la obra
  if (mouseX > 400) {
    //dist para medir la distancia
    float distancia = dist(mouseX, mouseY, 600, 200);
    //map para cambiar el grosor muy suave, entre 1 y 7 
    grosor = map(distancia, 0, 300, 7 , 1);
  }
  
  stroke(150); //gris para la linea
  strokeWeight(grosor); //el grosor q cambia con el mouse

  //ciclo for anidado
  for (int i = 0; i < filas; i++) {

    //condicionales
    float mov = 0;
    if (i % 2 == 1) {
      mov = 35;
    } else {
      mov = 0;
    }

    for (int i2 = 0; i2 < tam; i2++) {
     
      fill(obtenerColor(i, i2)); //funcion con retorno

      //rotate para darle un movimiento muy sutil a los rect
      pushMatrix();
      translate(i2 * tamX - mov, i * tamY);
      
      // Si el mouse esta en la derecha, rotan un poquitito segun la altura del mouse
      if (mouseX > 400 && cortarefec) {
        float grados = map(mouseY, 0, height, -4, 4);
        rotate(radians(grados));
      }
      
      //dibujo el rect
      rect(0, 0, tamX, tamY);
      popMatrix();
    }
  }
  popMatrix();
}

//funcion propia con parametros que retorna un valor
color obtenerColor(int fila, int col) {
  if (modoColor == 1) {
    //si se hizo clic, se pone azul y violta en los cudraditos
    if ((fila + col) % 2 == 0) {
      return color(140 + variacion, 40, 250); //tono violeta afectado por el random
    } else {
      return color(30, 60, 210 + variacion);  //tono azul afectado por el random
    }
  } else {
    //colores originales en blanco y negro
    if ((fila + col) % 2 == 0) {
      return color(0); //negro
    } else {
      return color(255); //blanco
    }
  }
}

//eventos de mouse para modificar variables + random
void mousePressed() {
  //solo cambia si el clic se hace del lado de la obra
  if (mouseX > 400) {
    modoColor = 1; 
    variacion = random(-35, 35); //genera una variante de color unica en cada clic
  cortarefec = true;
}
}
void mouseMoved(){
 cortarefec = true; 
}
//eventos de teclado para reinicra el programa
void keyPressed() {
  //si se preocina la 'R' o 'r', todo vuelve a su estado original
  if (key == 'r' || key == 'R') {
    modoColor = 0;
    variacion = 0;
    cortarefec = false;
  }
}
