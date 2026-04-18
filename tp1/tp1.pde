//Fernandez Sanabria Abril Eugenia
//comision 3 TT
//TP1
//04/26

PImage miImagen;

void setup(){
size(800, 400);
miImagen = loadImage ("mural.jpeg");

}

void draw(){
image (miImagen, 0,0, 390,400);

//fondo
noStroke();
fill(180,50,50);
rect(400,0,400,400);
noStroke();
fill(0,0,110);
rect(400,0, 200,240);
noStroke();
fill(255,255,0);
rect(400,240,130,160);

//cuerpo
fill(210,160,50);
stroke(40,80,150);
ellipse(600,450,350,400);

//cabeza
ellipse(600,200,185,190);

//orejas
ellipse(520,120,70,70);
ellipse(680,120,70,70);
fill(255,0,0);
ellipse(525,135,40,35);
ellipse(670,135,40,35);

//ojos
fill(255);
ellipse(560,190,60, 70);
ellipse(640,190,60,70);


//pupilass
stroke(150,0,50);
fill(255,50,50);
ellipse(550,180,35,40);
ellipse(630,180,30,38);

//brillito del ojo 
noStroke();
fill(255);
ellipse(545,168,18,15);
ellipse(630,168,18,15);

//lo rojito de abajo
fill(255,0,0);
stroke(40,80,150);
ellipse(560,215,40,20);
ellipse(640,215,38,15);

//corazon en la frente
ellipse(590, 140,20,20);
ellipse(610, 140,20,20);
triangle(586, 148, 614, 148, 600, 165);

//la nariz y boca
fill(40,80,150);
ellipse(600, 220,25,20);
line(600, 220,600,248);

//los dientes
fill(255);
stroke(40, 80, 150); 
strokeWeight(3); 
rect(588, 245, 12, 18); 
rect(600, 245, 12, 18);

//detalles de la pared
stroke(0);
fill(0);
fill(0,100,255);//azul un poco mas claro
rect(400,0,200,30);
fill(255,0,0);
rect(600,0,200,30);
stroke(255);
fill(180);//medio gris
rect(725,30,60,85);

fill(0,110,0);
rect(400,270,60,60);
stroke(255);
fill(255,255,120);//amarillito
rect(400,30,80,90);

//otros detalles

fill(200);
rect(540,220,15,70);
noStroke();
fill(0,110,0);
rect(600,200,20,20);
stroke(255);
fill(200);
rect(730,115,15,70);
rect(740,170,50,70);
stroke(255);
fill(0,0,200);
rect(400,120,60,80);

stroke(200,0,0);
fill(0,0,255);
ellipse(600,350,40,50);

stroke(40,80,150);
fill(255,0,0);
ellipse(560,320,20,30);
ellipse(640,320,20,30);
}
