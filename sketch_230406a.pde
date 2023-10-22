

/*No se usan directiva de preprocesamiento*/

void setup(){

   fullScreen();
   
   background(255,255,255);
   
    Plane plane1;
    plane1 = new Plane(172);
    
   
   plane1.draw_line_vertical();
   plane1.draw_diagonal_right();
   plane1.draw_diagonal_left();
   
   Menu menu1;
   menu1 = new Menu();
   menu1.Draw();
   
   LevelBar LevelBar1;
   LevelBar1 = new LevelBar();
   //LevelBar1.drawLevelBar();
   
  
}




void draw(){  
 
    
  
 }
