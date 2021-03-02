//value 70
void value70() {
  pushMatrix();
  noStroke();
  polygon(0, 0, 10, 30);//gorwth 1 circle
  popMatrix();
}

//value 80
void value80() {
  pushMatrix();
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  popMatrix();
}

void value130() {
  pushMatrix();
  fill(255, 90);
  polygon(0, 0, 15, 50);//growth 2 circle
  popMatrix();
}

void value160() {
  pushMatrix();
  noStroke();
  fill(255, 100);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  popMatrix();
}

void value190() {
  pushMatrix();
  rotate(frameCount/PI/60);
  polygon(0, 0, 35, 6);//growth 1 hexagon
  popMatrix();
}

void value200() {
  pushMatrix();
  rotate(frameCount/PI/60);
  stroke(255, 30);
  polygon(0, 0, 45, 6);//hex2
  popMatrix();
}

void value230() {
  pushMatrix();
  rotate(frameCount/PI/60);
  stroke(255, 30);
  polygon(0, 0, 50, 6);//hex3
  popMatrix();
}

void value260() {
  pushMatrix();
  rotate(frameCount/PI/60);
  fill(255, 90);
  markS();
  popMatrix();
}

void value290() {
  pushMatrix();
  rotate(frameCount/PI/60);
  markS2();
  fill(255, 90);
  polygon(0, 0, 70, 6); //hex 4
  popMatrix();
}


void value300() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixEd1();
  popMatrix();
}

void value330() {
  pushMatrix();
  rotate(frameCount/PI/60);
  markS();
  markS2();
  sixEd2();
  popMatrix();
}


void value360() {
  pushMatrix();
  rotate(frameCount/PI/60);
  fill(255, 50);
  sixEd1();
  sixEd2();
  sixEd3();
  fill(255);
  popMatrix();
  textFont(f);
  textSize(14);
  text(sectorPlate, -150, 200);
}
//value 400
void value400() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  polygon(0, 0, 70, 6);//hex4
  sixEd2();
  popMatrix();
}

//value 430
void value430() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  fill(255);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  polygon(0, 0, 70, 6);//hex4
  sixEd1();
  popMatrix();
}

//value 460
void value460() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  polygon(0, 0, 70, 6);//hex4
  markS1a();
  popMatrix();
}

//value 480
void value480() {
  //background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  markS1b();
  arms1();
  popMatrix();
}

//value 500
void value500() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  polygon(0, 0, 70, 6);//hex4
  markS1c();
  arms2();
  popMatrix();
}

//value 530
void value530() {
  pushMatrix();
  rotate(frameCount/PI/60);
  arms3();
  popMatrix();
}

//value 560
void value560() {
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  markS1e();
  arms4();
  popMatrix();
}

//value 570
void value570() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  polygon(0, 0, 70, 6);//hex4
  //markS1d();
  markS1f();
  arms5();
  popMatrix();
}

//value 580
void value580() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixScale1();
  popMatrix();
}

//value 590
void value590() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixScale2();
  popMatrix();
}

void value600() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixScale3();
  popMatrix();
}


void value630() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixScale4();
  popMatrix();
}

//value 660
void value660() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  //polygon(0, 0, 70, 6);//hex4
  markS1f();
  arms5();
  sixScale1();
  sixScale2();
  sixScale3();
  sixScale4();
  branches();
  popMatrix();
}

//value 700
void value700() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//gorwth 1 circle
  fill(255, 60);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 45, 6);//hex2
  polygon(0, 0, 50, 6);//hex3
  //polygon(0, 0, 70, 6);//hex4
  markS1f();
  noStroke();
  sixArms1();
  sixScale1();
  sixScale2();
  sixScale3();
  sixScale4();
  branches();
  popMatrix();
}

//value 730
void value730() {
  pushMatrix();
  rotate(frameCount/PI/60);
  sixArms1();
  sixBranches(); //all the pointy sides of the arms
  sixScale1();
  sixScale2();
  sixScale3();
  sixScale4();
  branches();
  toppings3();
  popMatrix();
}

//value 760
void value760() {
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  sixBranches1(); //all the pointy sides of the arms
  toppings2();
  popMatrix();
}

//value 790
void value790() {
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  //all the pointy sides of the arms
  toppings();
  popMatrix();
}

//value 800
void value800() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 50);//growth 1 circle
  fill(255, 90);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 35, 6);//growth 1 hexagon
  polygon(0, 0, 40, 6);//hex2
  //polygon(0, 0, 50, 6);//hex3
  //polygon(0, 0, 70, 6);//hex4
  markS1f();
  noStroke();
  fill(255, 120);
  sixArms1();
  sixBranches2(); //all the pointy sides of the arms
  sixScale1();
  sixScale2();
  sixScale3();
  sixScale4();
  branches6();
  toppings();
  popMatrix();

  fill(255);
  PFont f= createFont("Verdana", 24);
  textFont(f);
  textSize(14);
  text(dendrite, -110, 250);
}

//value 830
void value830() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  noStroke();
  fill(255);
  polygon(0, 0, 10, 30);//growth 1 circle
  fill(255, 90);
  polygon(0, 0, 15, 50);//growth 2 circle
  polygon(0, 0, 30, 50);//growth 3 solid circle
  polygon(0, 0, 20, 6);//growth 1 hexagon
  polygon(0, 0, 32, 6);//hex2
  markS1f();
  noStroke();
  fill(255, 120);
  sixArms1();
  sixBranches2(); //all the pointy sides of the arms
  sixScale1();
  sixScale2();
  sixScale3();
  //sixScale4();
  branches5();
  toppings2();
  popMatrix();
  fill(255);
  PFont f= createFont("Verdana", 24);
  textFont(f);
  textSize(14);
  text(dendrite, -110, 250);
}

//value 860
//growing pointy sides b
void value860() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  fill(255, 150);
  noStroke();
  polygon(0, 0, 10, 30);
  //first hexagon
  polygon(0, 0, 20, 6);
  //second hexagon
  polygon(0, 0, 32, 6);

  sixArms6();
  markS5();
  branches6();
  sixBranches5b();
  toppings6();
  popMatrix();
}

//value 890
//growing pointy sides b
void value890() {
  background(0);
  pushMatrix();
  rotate(frameCount/PI/60);
  fill(255, 150);
  noStroke();
  polygon(0, 0, 10, 30);
  //first hexagon
  polygon(0, 0, 20, 6);
  //second hexagon
  polygon(0, 0, 32, 6);

  sixArms6();
  markS5();
  branches5();
  sixBranches5a();
  toppings5();
  popMatrix();

  fill(255);

  textFont(f);
  textSize(14);
  text(fern, -90, 250);
}
