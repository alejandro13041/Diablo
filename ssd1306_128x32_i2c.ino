#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels


// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
// The pins for I2C are defined by the Wire-library. 
// On an arduino UNO:       A4(SDA), A5(SCL)
// On an arduino MEGA 2560: 20(SDA), 21(SCL)
// On an arduino LEONARDO:   2(SDA),  3(SCL), ...
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

#define LOGO_HEIGHT   16
#define LOGO_WIDTH    16  

void setup() {
  Serial.begin(9600);

  // Inicialización del display
  if (!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;); // No continuar si falla la inicialización
  }

  display.clearDisplay(); 
  display.setRotation(3);

  // Intentar imprimir el carácter
  display.setTextSize(1);  // Tamaño del texto
  display.setTextColor(SSD1306_WHITE);  // Color del texto

   display.setCursor(0, 0); 
  display.printUTF8("H");
  display.setCursor(0, 16);   
  display.printUTF8("O");
  display.setCursor(0, 32);   
  display.printUTF8("L");
  display.setCursor(0, 48);   
  display.printUTF8("A"); 
  display.setCursor(16, 0);  
  display.printUTF8("M"); 
  display.setCursor(16, 16);  
  display.printUTF8("U"); 
  display.setCursor(16, 32);  
  display.printUTF8("N"); 
  display.setCursor(16, 48);  
  display.printUTF8("D"); 
  display.setCursor(16, 64);  
  display.printUTF8("O");   
/*
  display.setCursor(0, 0);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 16);  // Posición del cursor en pantalla
  display.printUTF8("氇");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 32);  // Posición del cursor en pantalla
  display.printUTF8("氂");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 48);  // Posición del cursor en pantalla
  display.printUTF8("氈");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 64);  // Posición del cursor en pantalla
  display.printUTF8("氄");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 80);  // Posición del cursor en pantalla
  display.printUTF8("氅");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 96);  // Posición del cursor en pantalla
  display.printUTF8("氆");  // Intentar imprimir el carácter Unicode
  display.setCursor(0, 112);  // Posición del cursor en pantalla
  display.printUTF8("氇");  // Intentar imprimir el carácter Unicode
 

  display.setCursor(16, 0);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 16);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 32);  // Posición del cursor en pantalla
  display.printUTF8("氅");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 48);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 64);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 80);  // Posición del cursor en pantalla
  display.printUTF8("瀀");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 96);  // Posición del cursor en pantalla
  display.printUTF8("氈");  // Intentar imprimir el carácter Unicode
  display.setCursor(16, 112);  // Posición del cursor en pantalla
  display.printUTF8("氇");  // Intentar imprimir el carácter Unicode
    */
  display.display();  // Actualizar la pantalla
  
  delay(2000);
}

void loop() {
  // Nada en el loop
}
