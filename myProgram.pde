int nbrligne=1000;


Iteration []  iterations= new Iteration [nbrligne];

void setup () {
  background(0,0,0);
  //fullScreen (P2D);
  size (800,150);
  for ( int i=0; i<nbrligne; i++) {
  iterations [i]= new Iteration (int(random (0,width)),int(random(0,height)),int(random(-5,5)),int(random(-5,5)));  
  // iterations [i]= new Iteration (int(random (0,width)),int(random(0,height)),1,1);  
       
  }
}


void draw () {
  background(255);
  for (int i=0; i<nbrligne; i++) {
  iterations[i].bounce ();
 
  iterations[i].move ();
  iterations[i].bounceline ();
  iterations[i].display();
//   ellipse(mouseX,mouseY,100,100);
    
    
  }
  
 
  
}

class  Iteration{
 int posX;
 int posY;
 int speedX;
 int speedY;
 int posXbis;
 int posYbis;
 
 Iteration ( int posX_, int posY_, int speedX_,int speedY_) {
  posX= posX_;
  posY= posY_;
  speedX= speedX_;
  speedY= speedY_;
  posXbis= posX;
  posYbis= posY;
 }
 
 
void bounceline (){
   if ( get(posX,posY) != color(0,0,0)) {
    speedX= - speedX;
   // speedY= - speedY; 
   // ellipse( posX,posY,200,200); 
   }
  
  
}


void bounce () {
  if (posX >width || posX <0){
   speedX= - speedX; }
   
   if (posY >height || posY <0){
   speedY= - speedY; 
  }
  
  
}

void move () {
 posXbis= posXbis+ speedX;
 posYbis= posYbis+ speedY;

}

void display() {
  
  line (posX, posY, posXbis,posYbis);
  
}





}