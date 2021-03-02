//for all the shapes circle and hexagons
void polygon(float x, float y, float r, float n) {
  float radius=r;
  float angle=TWO_PI/n; // angle is drawn according to the number of n(side) value given. ex. 360/6 gives a six sided polygon
  beginShape();
  for (float a=0; a<TWO_PI; a+=angle) {
    float px=x+cos(a)*radius;
    float py=y+sin(a)*radius;
    vertex(px, py);
  }
  endShape(CLOSE);
}
