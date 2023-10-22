class Live{
  
  /* Atributos */

  int x;
  int y;
  

  /*constructor*/
  
  Live(){


  }


  /*Metodos*/
  
  void drawLive(){
  
    rect(x-100,y,100,84);
    rect(width_LevelBar+x,y,100,84);
      
    circle(700,y+42,125);
    circle(1202,y+42,125);
       
    fill(255,0,0);
    circle(700,y+42,120);
    fill(38,78,224);
    circle(1202,y+42,120);
  
  }

}
