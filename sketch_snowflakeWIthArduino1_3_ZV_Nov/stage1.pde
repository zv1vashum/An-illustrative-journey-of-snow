//water moclecule wobbly
void wM() {
  background(0);// backgrund is black always
  stroke(255);
  noFill();
  beginShape(); //to draw polygons you have to use this
  //lets first make the polygon with many points with a use of trignometry. To make this polygon we need x y cordinates to move, radius to calculate the distance between the starting point and the edge.
  for (float a=0; a<TWO_PI; a+=0.01) { // if a (angle) is at 0 and a (angle) is less then 360 degrees then increment to 360 with 0.1 points.
    float xOff=map(cos(a), -1, 1, 0, noiseMax);
    float yOff=map(sin(a), -1, 1, 0, noiseMax);
    float r= map(noise(xOff, yOff, zOff), 0, 1, 10, 30);
    float x=r*cos(a);
    float y=r*sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);  

  zOff+=0.01;
}


void frosty(float s) {

 //translate(width/2, height/2);//takes the center point to screen size it is displayed on
  background(0);// background is black always
  fill(255);
  /*
  PFont f= createFont("Verdana", 24);
   textFont(f);
   textSize(14);
   text(frost, -70, 100);*/
  noStroke();
  //noFill();
  beginShape(); //to draw polygons you have to use this
  //lets first make the polygon with many points with a use of trignometry. To make this polygon we need x y cordinates to move, radius to calculate the distance between the starting point and the edge.
  for (float a=0; a<TWO_PI; a+=0.01) { // if a (angle) is at 0 and a (angle) is less then 360 degrees then increment to 360 with 0.1 points.
    float xOff=map(cos(a), -1, 1, 0, noiseMax1);
    float yOff=map(sin(a), -1, 1, 0, noiseMax1);
    float r= map(noise(xOff, yOff, zOff), 0, 1, 5, s);
    float x=r*cos(a);
    float y=r*sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
  zOff+=0.02;
}
