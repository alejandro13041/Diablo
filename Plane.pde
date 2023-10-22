class Plane{



	/* Atributos */

	int sizeMatriz;
	float x1;
	float y1;
	float x2;
	float y2;
  float angle;
  float length;



	/* Constructor */

	Plane(int _sizeMatriz){

		sizeMatriz = _sizeMatriz;


	 }

	/* metodos */  

	void draw_line_vertical(){

	  	x1 = 0;
	  	y1 = 0;
	  	x2 = 0;
	  	y2 = height;
	  
	  	for(int i = 0; i <= sizeMatriz; i++){
	 
			line(x1,y1,x2,y2);
			x1+=32;
			x2+=32; 

	     }
	   
	 }  

	void draw_diagonal_right(){
	  
	   x1 = width;
	   y1 = 0;
	   x2 = 0;
	   y2 = 0;
	   length = sqrt(sq(width) + sq(height));
	   angle = radians(30);

		for(int i = 0; i <= sizeMatriz;i++){
	  
		    x2 = x1 + cos(angle) * length;
		    y2 = y1 + sin(angle) * length;
		    line(x1,y1,x2,y2);    
		    x1-=64;
		  
	  	 }
	 }

	void draw_diagonal_left(){

	   x1 = 0;
	   y1 = 0;
	   x2 = 0;
	   y2 = 0;

	   length = sqrt(sq(width) + sq(height));
	   angle = radians(150);

		for(int i = 0; i <= sizeMatriz;i++){
	  
		    x2 = x1 + cos(angle) * length;
		    y2 = y1 + sin(angle) * length;
		    line(x1,y1,x2,y2);    
		    x1+=64;
		  
  	     }  

	 }

 }
