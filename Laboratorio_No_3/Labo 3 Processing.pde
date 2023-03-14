import processing.serial.*;

Serial puertoSerie; 
String valorPotenciometro; 

void setup() {
  size(400, 200); 
  puertoSerie = new Serial(this, "COM3", 9600);  
}

void draw() {
  background(255); 
  fill(0); 
  textSize(24); 
  text("Valor del potenciómetro: " + valorPotenciometro, 50, 100); 
}

void serialEvent(Serial puertoSerie) {
  valorPotenciometro = puertoSerie.readStringUntil('\n'); 
}
