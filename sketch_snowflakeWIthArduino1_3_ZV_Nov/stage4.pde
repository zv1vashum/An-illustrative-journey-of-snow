//4th stage Dendrite stellar

void arms6() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -100);
  rotate(PI/2);
  scale(1, 0.1);
  polygon(0, 0, 30, 6);
  popMatrix();
}

void sixArms() {
  //rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    arms6();
    popMatrix();
  }
}

void arms7() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -100);
  rotate(PI/2);
  scale(1, 0.1);
  polygon(0, 0, 90, 6);
  popMatrix();
}

void sixArms1() {
  //rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    arms7();
    popMatrix();
  }
}
