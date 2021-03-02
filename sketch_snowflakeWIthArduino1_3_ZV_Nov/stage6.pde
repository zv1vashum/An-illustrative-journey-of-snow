//fern stellar starts here

void branch6() {
  pushMatrix();
  translate(-10, -40);
  rotate(PI/6);
  scale(0.6, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(10, -40);
  rotate(PI/-6);
  scale(0.6, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();
}

/*void recursion6() {
 pushMatrix();
 for (float c=0; c<10; c+=3) {
 translate(0, c*6);
 branch6();
 }
 popMatrix();
 }*/

void branches6() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    branch6();
    popMatrix();
  }
}

void branch5() {
  pushMatrix();
  translate(-15, -40);
  rotate(PI/6);
  scale(0.8, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(15, -40);
  rotate(PI/-6);
  scale(0.8, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();
}

void recursion5() {
  pushMatrix();
  for (float c=0; c<10; c+=3) {
    translate(0, c*6);
    branch5();
  }
  popMatrix();
}

void branches5() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    branch5();
    popMatrix();
  }
}

void markS5() {
  // rotate(PI/6);
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    stroke(255);
    //translate(width/2,height/2);
    line(0, -180, 0, 180);
    popMatrix();
  }
}


void branch5a() {
  //rotate(PI/3);
  //translate(-110, 0);
  pushMatrix();
  translate(-20, -62);
  rotate(PI/6);
  scale(1.2, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(20, -62);
  rotate(PI/-6);
  scale(1.2, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //2nd pointy 
  pushMatrix();
  translate(-25, -95);
  rotate(PI/6);
  scale(1.2, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(25, -95);
  rotate(PI/-6);
  scale(1.2, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  //3rd pointy
  pushMatrix();
  translate(-20, -125);
  rotate(PI/6);
  scale(1.1, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(20, -125);
  rotate(PI/-6);
  scale(1.1, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //4th pointy
  pushMatrix();
  translate(-20, -145);
  rotate(PI/6);
  scale(0.9, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(20, -145);
  rotate(PI/-6);
  scale(0.9, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //5th pointy
  pushMatrix();
  translate(-10, -155);
  rotate(PI/6);
  scale(1, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();

  pushMatrix();
  translate(10, -155);
  rotate(PI/-6);
  scale(1, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();
}

void sixBranches5a() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    branch5a();
    popMatrix();
  }
}

void branch5b() {
  //rotate(PI/3);
  //translate(-110, 0);
  pushMatrix();
  translate(-15, -62);
  rotate(PI/6);
  scale(0.9, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(15, -62);
  rotate(PI/-6);
  scale(0.9, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //2nd pointy
  pushMatrix();
  translate(-15, -95);
  rotate(PI/6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(15, -95);
  rotate(PI/-6);
  scale(0.7, 0.3);
  polygon(0, 0, 25, 6);
  popMatrix();


  //3rd big pointy
  pushMatrix();
  translate(-15, -125);
  rotate(PI/6);
  scale(0.9, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(15, -125);
  rotate(PI/-6);
  scale(0.9, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();

  //4th pointy
  pushMatrix();
  translate(-10, -145);
  rotate(PI/6);
  scale(0.5, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  pushMatrix();
  translate(10, -145);
  rotate(PI/-6);
  scale(0.5, 0.2);
  polygon(0, 0, 25, 6);
  popMatrix();

  //5th pointy
  pushMatrix();
  translate(-10, -155);
  rotate(PI/6);
  scale(0.7, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();

  pushMatrix();
  translate(10, -155);
  rotate(PI/-6);
  scale(0.7, 0.3);
  polygon(0, 0, 15, 6);
  popMatrix();
}

void sixBranches5b() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    branch5b();
    popMatrix();
  }
}



void arms8() {
  pushMatrix();
  rotate(PI/6);
  translate(0, -100);
  rotate(PI/2);
  scale(1, 0.1);
  polygon(0, 0, 80, 6);
  popMatrix();
}

void sixArms6() {
  //rotate(PI/6);
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    arms8();
    popMatrix();
  }
}
//
/*void top() {
 pushMatrix();
 rotate(PI/6);
 translate(0, -170);
 fill(255, 160);
 noStroke();
 scale(0.7, 1.7);
 polygon(0, 0, 10, 6);
 popMatrix();
 }*/
//small topping for value 540
void top6() {
  pushMatrix();
  translate(0, -170);
  rotate(PI/2);
  scale(0.7, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();
}

void toppings6() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    top6();
    popMatrix();
  }
}


void top5() {
  pushMatrix();
  translate(0, -170);
  rotate(PI/2);
  scale(1.2, 0.3);
  polygon(0, 0, 20, 6);
  popMatrix();
}

void toppings5() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    top5();
    popMatrix();
  }
}
