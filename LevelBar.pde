class LevelBar{


   
   /* Atributos */
   
   int x;
   int y;
   int height_LevelBar;
   int  width_LevelBar;

   float sizeSlotExperienceX;
   float sizeSlotExperienceY;
   
   int numberSlots;
   int space;
   int large;
   
   
  /* Constructor */

  LevelBar(){
    
    x = ((width/2)-196);
    y = (height - 148 );
    width_LevelBar = 374;
    height_LevelBar = 20;
    numberSlots = 10;
    space = 2;
    sizeSlotExperienceX = ((width_LevelBar-(numberSlots+1)*space)/10);
    sizeSlotExperienceY = (height_LevelBar - 4);
    
    
    
    
   }
   
   /* Metodos */
   
   void drawLevelBar(){
   
       rect(x,y,width_LevelBar,height_LevelBar);
       
       for(int i = 2;i<=(sizeSlotExperienceX*10);i+=sizeSlotExperienceX+2){
   
           rect(x+i,y+space,sizeSlotExperienceX,sizeSlotExperienceY);
         
        }
        
        rect(x-100,y,100,84);
      rect(width_LevelBar+x,y,100,84);
      
      circle(700,y+42,125);

       circle(1202,y+42,125);
       
       fill(255,0,0);
       circle(700,y+42,120);
       fill(38,78,224);
       circle(1202,y+42,120);
       
       
       float x1 = ((width/2)-196);
       slot(x1);

      for (int i = 0; i == 10; i++) {
      slot(x1+2+(sizeSlotExperienceX)*i);

  }
      
   }
   
   void slot(float x1){

    int y1 = (height - 148 );
    fill(222,205,20);  
    if (large <= sizeSlotExperienceX) {    
      rect(x1+2,y1+2,large,16);
      large++;
      delay(150);

   }
 }

}
