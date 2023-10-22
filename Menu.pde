class Menu{

	int x;
	int y;
	int widthMenu;
	int heightMenu;
	int sizeSlot;
	int width_experienceBar;
	int numberSlots;
	int space;

	Menu(){
  
    x = ((width/2)-196);
    y = (height - 128);
    widthMenu = 374;
    heightMenu = 64;
    sizeSlot = 60;

	 }

	void Draw(){
	    
	  fill(98,98,98);
	  rect(x,y,widthMenu,heightMenu);
	 
	  for(int i = 2;i<=312;i+=62){
  
	    rect(x+i,y+2,sizeSlot,sizeSlot);
	 
	  }
	 
	}
 
 }
