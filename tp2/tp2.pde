//Comision 3
//tp 2
//Fernandez Sanabria Abril Eugenia
//Legajo: 122696/3

//declaro las variables globales
int estado; //variable para saber en que pantalla me encuentro
int contador; //variable que funciona como temporizador para las animaciones y las transiciones
PImage foto0, foto1, foto2, foto3, foto4;
PFont mifuente;

void setup() {
  size(640, 480);
  inicializar(); //llamo a mi funcion propia 

  //cargo las imagenes
  foto0 = loadImage("foto0.jpeg");
  foto1 = loadImage("foto1.jpeg");
  foto2 = loadImage("foto2.jpeg");
  foto3 = loadImage("foto3.jpeg");
  foto4 = loadImage("foto4.jpeg");

  //cargo mi fuente de processing
  mifuente =loadFont ("Georgia.vlw");
}

void draw() {

  //uso una estructura condicional if/elseif para administrar las pantallas
  //dependiendo del valor de la variable estado, llamo a una funcion de dibujado distintoa
  if (estado == 0) {
    dibujaPantallaInicio();
  } else if (estado == 1) {
    dibujaPantallaFoto1();
  } else if (estado == 2) {
    dibujaPantallaFoto2();
  } else if (estado == 3) {
    dibujaPantallaFoto3();
  } else if (estado == 4) {
    dibujaPantallaFoto4();
  } else if (estado == 5) {
    dibujaPantallaFinal();
  }
}

void mousePressed() {
  if (estado == 0) {
    // Si estoy en el inicio y hago clic en el boton ver mas
    if (mouseSobreRectangulo(width/4, 350, 150, 50)) {
      estado = 1;  //cambio a la pantalla siguiente 
      contador = 0; //reinicio el temporizador paraque lñas pantallas enpiecen desde 0
    }
  } else if (estado==5) {
    //sie estoy en la pantalla final, verifico si se hizo clic en el boton de reiniciar
    if (mouseSobreRectangulo(width/2, 350, 150, 50)) {
      estado=0;
      contador=0;
    }
  }
}
