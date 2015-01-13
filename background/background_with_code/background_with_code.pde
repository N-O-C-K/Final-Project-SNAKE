float score;

PImage img;

int point;
void setup (){
  
  size(600,500);

img = loadImage ("grass!.jpg");

}



void draw(){
 image(img,0,0,width,height);
 textSize(25);
text(score, 250,100);
fill(0);
}


