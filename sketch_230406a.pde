void setup(){

   fullScreen();
   

}

  
  
void lineas_verticales(int tamaño_reticula){

  float x1 = 0;
  float y1 = 0;
  float x2 = 0;
  float y2 = height;
  
  for(int i = 0; i <= tamaño_reticula;i++){
 
     line(x1,y1,x2,y2);
     x1+=32;
     x2+=32; 
 
   }
   
}  

void diagonales_derechas(int tamaño_reticula){
  
  float x1 = width;
  float y1 = 0;
  float x2 = 0;
  float y2 = 0;
  float length = sqrt(sq(width) + sq(height));
  float angle = radians(30);


  
  for(int i = 0; i <= tamaño_reticula;i++){
  
    x2 = x1 + cos(angle) * length;
    y2 = y1 + sin(angle) * length;
    line(x1,y1,x2,y2);    
    x1-=64;
  
  }



}

void diagonales_isquierdas(int tamaño_reticula){

  float x1 = 0;
  float y1 = 0;
  float x2 = 0;
  float y2 = 0;
  float length = sqrt(sq(width) + sq(height));
   float angle = radians(150);


  
  for(int i = 0; i <= tamaño_reticula;i++){
  
    x2 = x1 + cos(angle) * length;
    y2 = y1 + sin(angle) * length;
    line(x1,y1,x2,y2);    
    x1+=64;
  
  }
 
}
void draw(){

 int tamaño_reticula = 172;
 
   
 lineas_verticales(tamaño_reticula);
 diagonales_derechas(tamaño_reticula);
 diagonales_isquierdas(tamaño_reticula);
  
  


}
