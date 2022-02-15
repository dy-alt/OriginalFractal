int colorCycle; 
public void setup(){
  size(500,500);
  rectMode(CENTER);
  background(0);
  colorMode(HSB, 360,100,100);
  frameRate(36);
}
public void draw(){
  circle(250, 250, 500);
}
public void circle(int x, int y, int size){
  //fill(255,128,0);
  colorCycle = frameCount%360;
  rect(x, y+size, size, size);
  if(size>=5){
    fill(color(colorCycle, 100,100));
    circle(x+size/2, y,size/2);
    fill(color(colorCycle, 200,300));
    circle(x-size/2, y,size/2);
    fill(color(colorCycle, 25,90));
    circle(y+size/2, x,size/2);
    fill(color(colorCycle, 60,80));
    circle(y-size/2, x,size/2);
  }
}
