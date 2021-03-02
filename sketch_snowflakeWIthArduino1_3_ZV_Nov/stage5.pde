//5th stage pointy sides of the arms
//pointy sides1
void pointySides1() {
  //rotate(PI/3);
  //translate(-110, 0);
  /* pushMatrix();
   translate(-10, -62);
   rotate(PI/6);
   scale(0.7, 0.3);
   polygon(0, 0, 20, 6);
   popMatrix();
   
   pushMatrix();
   translate(10, -62);
   rotate(PI/-6);
   scale(0.7, 0.3);
   polygon(0, 0, 20, 6);
   popMatrix();
   */

  pushMatrix();
  translate(-10, -95);
  rotate(PI/6);
  scale(0.3, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(10, -95);
  rotate(PI/-6);
  scale(0.3, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(-15, -125);
  rotate(PI/6);
  scale(0.5, 0.2);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(15, -125);
  rotate(PI/-6);
  scale(0.5, 0.2);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(-10, -145);
  rotate(PI/6);
  scale(0.3, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(10, -145);
  rotate(PI/-6);
  scale(0.3, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(-10, -155);
  rotate(PI/6);
  scale(0.3, 0.2);
  polygon(0, 0, 15, 6);
  popMatrix();

  pushMatrix();
  translate(10, -155);
  rotate(PI/-6);
  scale(0.3, 0.2);
  polygon(0, 0, 15, 6);
  popMatrix();
}

void sixBranches() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    pointySides1();
    popMatrix();
  }
}


//pointy side 2
void pointySides2() {
  //rotate(PI/3);
  //translate(-110, 0);
  /* pushMatrix();
   translate(-10, -62);
   rotate(PI/6);
   scale(0.7, 0.3);
   polygon(0, 0, 20, 6);
   popMatrix();
   
   pushMatrix();
   translate(10, -62);
   rotate(PI/-6);
   scale(0.7, 0.3);
   polygon(0, 0, 20, 6);
   popMatrix();
   */

  //point1a
  pushMatrix();
  translate(-10, -95);
  rotate(PI/6);
  scale(0.5, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point1b
  pushMatrix();
  translate(10, -95);
  rotate(PI/-6);
  scale(0.5, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point2a
  pushMatrix();
  translate(-15, -125);
  rotate(PI/6);
  scale(0.7, 0.2);
  polygon(0, 0, 20, 6);
  popMatrix();

  //point2b
  pushMatrix();
  translate(15, -125);
  rotate(PI/-6);
  scale(0.7, 0.2);
  polygon(0, 0, 20, 6);
  popMatrix();

  //point3a
  pushMatrix();
  translate(-10, -145);
  rotate(PI/6);
  scale(0.4, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point3b
  pushMatrix();
  translate(10, -145);
  rotate(PI/-6);
  scale(0.4, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point4a
  pushMatrix();
  translate(-10, -155);
  rotate(PI/6);
  scale(0.6, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();

  //point4b
  pushMatrix();
  translate(10, -155);
  rotate(PI/-6);
  scale(0.6, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();
}

void sixBranches1() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    pointySides2();
    popMatrix();
  }
}

//pointy side 3
void pointySides3() {
  //point1a
  pushMatrix();
  translate(-15, -95);
  rotate(PI/6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point1b
  pushMatrix();
  translate(15, -95);
  rotate(PI/-6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point2a
  pushMatrix();
  translate(-15, -125);
  rotate(PI/6);
  scale(1.1, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //point2b
  pushMatrix();
  translate(15, -125);
  rotate(PI/-6);
  scale(1.1, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //point3a
  pushMatrix();
  translate(-10, -145);
  rotate(PI/6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point3b
  pushMatrix();
  translate(10, -145);
  rotate(PI/-6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  //point4a
  pushMatrix();
  translate(-10, -155);
  rotate(PI/6);
  scale(0.7, 0.5);
  polygon(0, 0, 15, 6);
  popMatrix();

  //point4b
  pushMatrix();
  translate(10, -155);
  rotate(PI/-6);
  scale(0.7, 0.5);
  polygon(0, 0, 15, 6);
  popMatrix();
}

void sixBranches2() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    pointySides3();
    popMatrix();
  }
}
//topping
//
void top3() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -160);
  fill(255, 160);
  noStroke();
  polygon(0, 0, 5, 6);
  popMatrix();
}

void toppings3() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    top3();
    popMatrix();
  }
}

void top2() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -160);
  fill(255, 160);
  noStroke();
  polygon(0, 0, 7, 6);
  popMatrix();
}

void toppings2() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    top2();
    popMatrix();
  }
}

void top() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -160);
  fill(255, 160);
  noStroke();
  polygon(0, 0, 10, 6);
  popMatrix();
}

void toppings() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    top();
    popMatrix();
  }
}
