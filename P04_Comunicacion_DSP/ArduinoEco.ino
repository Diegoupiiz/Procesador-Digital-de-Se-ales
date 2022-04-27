int datoRx = 0;    // for incoming serial data

void setup() {
    Serial.begin(115200);    // habilitamos serial(Pin 0, Pin 1) 
}

void loop() {

  // Verificamos si hay dato disponible en el buffer
  if(Serial.available() > 0) {
  
    // lectura de los datos 
    datoRx = Serial.read();
  
    // envío por UART
    Serial.print((char)datoRx);
  }
  
}
