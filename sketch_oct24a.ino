#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET    -1  // Reset pin no conectado
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void setup() {
  // Inicializar pantalla SSD1306
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println(F("SSD1306 no encontrado!"));
    while (true);
  }

  display.clearDisplay();
  display.setRotation(3);   // Configuración de rotación si es necesario
  display.setTextSize(1);   // Tamaño de texto 1 (pequeño)
  display.setTextColor(WHITE); // Color del texto
}

void loop() {
  // Limpiar la pantalla
  display.clearDisplay();

  // Imprimir texto en orden invertido verticalmente
  display.setCursor(16, 48); display.print("H");  // Ajustar posición Y para cada letra en orden inverso
  display.setCursor(16, 32); display.print("o");
  display.setCursor(16, 16); display.print("l");
  display.setCursor(16, 0);  display.print("a");

  //display.setCursor(16, 48); display.print("M"); 
  //display.setCursor(16, 32); display.print("u");
  //display.setCursor(16, 16); display.print("n");
  //display.setCursor(16, 0);  display.print("d");
  //display.setCursor(16, 48); display.print("o");

  // Actualizar el display
  display.display();

  delay(5000);  // Esperar 5 segundos
}
