//mi funcion propia 
void inicializar() {
  estado = 0;
  contador = 0;
}

// Función que retorna un boolean
// Utiliza operadores logicos para detectar si las coordenadas del mouse coinciden con el areade un rectángulo dibujado desde el centro
boolean mouseSobreRectangulo(float x, float y, float ancho, float alto) {

  if (mouseX > x - ancho/2 && mouseX < x + ancho/2 &&
    mouseY > y - alto/2 && mouseY < y + alto/2) {
    return true;  //el mouse esta sobre el boton
  } else {
    return false; //el mouse esta fuera del boton
  }
}

void dibujaPantallaInicio() {
  //condicional para parar el contador y que la animacion no siga 
  if (contador< 100) {
    contador++;
  }
  background(40, 40, 50); // 

  image(foto0, 0, 0, width, height);
  //variable local para controlar la animacion fade
  float opacidad;
  // Uso map para que la opacidad pase de 0 a 255 mientras el contador va de 0 a 100
  opacidad = map ( contador, 0, 100, 0, 255);

  fill(255, opacidad);
  textFont(mifuente); //aplico la fuente cargada en el setup
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Te presento a \nMIRANDA", width/4, 250);

  // Dibujo el botón de inicio
  rectMode(CENTER);
  fill(200, 50, 50);
  rect(width/4, 350, 150, 50);

  fill(255);
  textSize(20);
  text("ver mas", width/4, 350);
}

void dibujaPantallaFoto1() {
  contador++; //con esto aumenta el tiempo

  //transcision automatica por tiempo
  if (contador >= 420) {
    estado = 2; 
    contador = 0;
  }

  image(foto1, 0, 0, width, height);
  //animacion de movimiento desde abajo hacia arriba
  float posicionY = map(contador, 0, 150, height + 50, 400);
  //esto e sun condicional para que el texto se pare
  if (contador> 150) {
    posicionY= 400;
  }
  //fondo casitransparente para que el texto se lea mejor
  rectMode(CENTER);
  fill(0, 0, 0, 150);
  rect(width/2, posicionY, 580, 80);

  fill(0, 255, 255);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Miranda! es una banda argentina de electropop \nFormada en 2001 por Ale Sergi y Juliana Gattas", width/2, posicionY);
}

void dibujaPantallaFoto2() {
  contador++;
  //animacion horizontal , entra por la derecha
  float posicionX = map(contador, 0, 200, height + 50, 400);
  if (contador>200) {
    posicionX = 400; //frena el movimiento
  }

  image(foto2, 0, 0, width, height); 
  rectMode(CENTER);
  fill (0, 0, 0, 150);
  rect (posicionX, 400, 420, 160);
  fill(255, 255, 0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Creadores de grandes exitos como\nDon , Perfecta y Yo te dire\nAdemas pasaron miembros\nicónicos como Lolo Fuentes (guitarra),\nMonoto (bajo) y Bruno de Vincenti", posicionX, 400);
  //transicion automatica a la foto3
  if (contador >= 420) {
    estado = 3;
    contador = 0;
  }
}

void dibujaPantallaFoto3() {
  contador++;
  if (contador >= 420) {
    estado = 4;
    contador = 0;
  }

  image(foto3, 0, 0, width, height); 
  //dos animaciones a la vez, opacidad y movimiento vertical
  float opacidad = map(contador, 0, 200, 0, 255);
  float posicionY;
  if (contador < 100) {
    posicionY = map (contador, 0, 100, 0, 320);
  } else {
    posicionY=320;
  }
  rectMode(CENTER);
  fill(0, 0, 0, opacidad);
  rect(400, posicionY, 350, 120);
  fill(255, 0, 0, opacidad);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Hoy la banda \ncontinua pero en duo con \nAle Sergi y Juliana Gattas", 400, posicionY);
}

void dibujaPantallaFoto4() {
  contador++;
  if (contador >= 420) {
    estado = 5;  //paso a la pantall final
    contador = 0;
  }

  image(foto4, 0, 0, width, height); 
  //movimiento de abajo hacia arriba
  float posicionY;
  if (contador< 100) {
    posicionY= map (contador, 0, 100, height+ 50, 320);
  } else {
    posicionY = 320;
  }
  rectMode(CENTER);
  fill(0, 0, 0, 150);
  rect(width/2, posicionY, 460, 120);
  fill(255, 0, 0);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Llevan más de 20 años de carrera\nmanteniendo intacta su esencia\nelectropop, teatral y bailable", width/2, posicionY);
}

void dibujaPantallaFinal() {
  contador++;
  background(255, 0, 0);

  float posicionY = 150;
  float opacidad = 255;

  //movimiento y opacidad
  if (contador < 100) {
    posicionY = map (contador, 0, 100, height +50, 150);
    opacidad = map ( contador, 0, 100, 0, 255);
  } else {
    posicionY = 150;
    opacidad =255;
  }

  fill (255, 255, 0, opacidad);
  textSize(22);
  textAlign( CENTER, CENTER);
  text("Actualmente reversionaron sus canciones mas famosas \ncon artistas de la nueva generacion, \nen ¡Hotel Miranda! creando nuevos hits.\n¡Gracias por ver! \nespero te haya gustado.", 315, posicionY);

  //boton de reinico final
  rectMode(CENTER);
  fill(50, 150, 50);
  rect(width/2, 350, 150, 50);
  fill(255);
  textSize(25);
  text ("Reiniciar", width/2, 350);
}
