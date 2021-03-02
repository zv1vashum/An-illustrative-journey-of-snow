//stage 2 and 3 marks hexagon with marks Sector plates
//humidity
void markS() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255, 60);
    rotate(i);
    line(0, -60, 0, 60);
    popMatrix();
  }

  polygon(0, 0, 60, 6);
}

void markS2() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255, 60);
    rotate(i);
    line(0, -60, 0, 70);
    popMatrix();
  }
}

void markS3() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255, 90);
    rotate(i);
    line(0, -30, 0, 20);
    popMatrix();
  }
}

void sixEd1() {
  //draw hexagons on the six edges
  // rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    translate(75, 0);
    //noFill();
    //stroke(255, 120);
    noStroke();
    polygon(0, 0, 10, 50);
    popMatrix();
  }
}

void sixEd2() {
  //draw hexagons on the six edges
  // rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    translate(75, 0);
    //noFill();
    //stroke(255, 120);
    noStroke();
    polygon(0, 0, 15, 6);
    polygon(0, 0, 25, 6);
    popMatrix();
  }
}


void sixEd3() {
  //draw hexagons on the six edges
  // rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    translate(75, 0);
    //noFill();
    //stroke(255, 120);
    noStroke();
    markS3();
    polygon(0, 0, 25, 6);
    popMatrix();
  }
}
