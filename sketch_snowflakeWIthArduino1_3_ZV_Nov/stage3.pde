//ticklish dendrite stellar 
//the big arms
void arms1() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    noStroke();
    fill(255, 90);
    //left arm up
    pushMatrix();
    rotate(i);
    translate(110, 0);
    scale(1.5, 0.3);
    polygon(0, 0, 10, 6);
    popMatrix();
  }
}

void arms2() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    noStroke();
    fill(255, 90);
    //left arm up
    pushMatrix();
    rotate(i);
    translate(110, 0);
    scale(1.5, 0.3);
    polygon(0, 0, 20, 6);
    popMatrix();
  }
}

void arms3() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    noStroke();
    fill(255, 90);
    //left arm up
    pushMatrix();
    rotate(i);
    translate(110, 0);
    scale(1.5, 0.3);
    polygon(0, 0, 30, 6);
    popMatrix();
  }
}
void arms4() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    noStroke();
    fill(255, 90);
    //left arm up
    pushMatrix();
    rotate(i);
    translate(110, 0);
    scale(1.5, 0.3);
    polygon(0, 0, 40, 6);
    popMatrix();
  }
}

void arms5() {

  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    noStroke();
    fill(255, 90);
    //left arm up
    pushMatrix();
    rotate(i);
    translate(110, 0);
    scale(1.5, 0.3);
    polygon(0, 0, 50, 6);
    popMatrix();
  }
}



//marks for the 3rd shape
void markS1a() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -60, 0, 60);
    popMatrix();
  }
}

void markS1b() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -100, 0, 100);
    popMatrix();
  }
}

void markS1c() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -110, 0, 110);
    popMatrix();
  }
}

void markS1d() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -130, 0, 130);
    popMatrix();
  }
}

void markS1e() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -150, 0, 150);
    popMatrix();
  }
}

void markS1f() {
  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    stroke(255);
    // translate(width/2,height/2);
    rotate(i);
    line(0, -190, 0, 90);
    popMatrix();
  }
}


//scale
void sixScale1() {

  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    scale1();
    popMatrix();
  }
}

void sixScale2() {

  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    scale2();
    popMatrix();
  }
}
void sixScale3() {

  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    scale3();
    popMatrix();
  }
}

void sixScale4() {

  for (float i =PI/6; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    scale4();
    popMatrix();
  }
}

void scale1() {
  //upper right tiny arm facing left up
  pushMatrix();  
  rotate(PI/-2);
  translate(60, 60);
  scale(2.5, 1);
  polygon(0, 0, 4, 6);
  popMatrix();

  pushMatrix();  
  rotate(PI/6);
  translate(60, -60);
  scale(2.5, 1);
  polygon(0, 0, 4, 6);
  popMatrix();
}

void scale2() {
  //upper right tiny arm facing left up
  pushMatrix();  
  rotate(PI/-2);
  translate(60, 60);
  scale(2.5, 1);
  polygon(0, 0, 6, 6);
  popMatrix();

  pushMatrix();  
  rotate(PI/6);
  translate(60, -60);
  scale(2.5, 1);
  polygon(0, 0, 6, 6);
  popMatrix();
}

void scale3() {
  //upper right tiny arm facing left up
  pushMatrix();  
  rotate(PI/-2);
  translate(60, 60);
  scale(2.5, 1);
  polygon(0, 0, 8, 6);
  popMatrix();

  pushMatrix();  
  rotate(PI/6);
  translate(60, -60);
  scale(2.5, 1);
  polygon(0, 0, 8, 6);
  popMatrix();
}

void scale4() {
  //upper right tiny arm facing left up
  pushMatrix();  
  rotate(PI/-2);
  translate(60, 60);
  scale(2.5, 1);
  polygon(0, 0, 10, 6);
  popMatrix();

  pushMatrix();  
  rotate(PI/6);
  translate(60, -60);
  scale(2.5, 1);
  polygon(0, 0, 10, 6);
  popMatrix();
}

//inverted sixscales
void branch1() {
  pushMatrix();
  translate(-15, -50);
  rotate(PI/6);
  scale(1, 0.4);
  polygon(0, 0, 20, 6);
  popMatrix();

  pushMatrix();
  translate(15, -50);
  rotate(PI/-6);
  scale(1, 0.4);
  polygon(0, 0, 20, 6);
  popMatrix();
}

void recursion1() {
  pushMatrix();
  for (float c=0; c<10; c+=3) {
    translate(0, -c*6);
    branch1();
  }
  popMatrix();
}

void branches() {
  for (float i =PI/3; i<TWO_PI; i+=TWO_PI/6) {
    pushMatrix();
    rotate(i);
    branch1();
    popMatrix();
  }
}
