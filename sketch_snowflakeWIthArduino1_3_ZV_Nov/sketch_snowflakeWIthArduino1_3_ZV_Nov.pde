import processing.serial.*;

//import io.inventit.processing.android.serial.*;

//putting all the sketches

// change values manual for testing here! 
float poti1value = 0;
float poti2value = 0;

//intializing font
PFont f;

//Default screen has a small water drop wobbling in the center. Humidity and temperature is in 0 
float noiseMax=2;//wM() perlin noise
float zOff=0;// moving
float noiseMax1=50;

//strings
String frost= "0 \u00B0 degree: Frost";
String water= "Below 0 \u00B0 degree: water";
String hexagon="-5 \u00B0 degree: solid plate snow crystal";
String sectorPlate= "-10 \u00B0 degree: sectored plate snow crystal";
String dendrite= "-15 \u00B0 degree: Dendrite stellar";
String fern= "-20 \u00B0 degree: fern stellar";

void setup() {
  size(1150, 600); // the screen size of the tablet
  background(123);
  //myPort = new Serial(this, Serial.list(this)[0], 9600);  //for windows laptop + arduino+ potis
  //myPort  =  new Serial (this, Serial.list()[0], 9600);// for android tablet +ardino+ potis
  f = createFont("Verdana", 24);

  //myPort.clear();
}

void draw() {

  background(0);
  translate(width/2, height/2);

  //manauel 
 // poti1value = 760;
 // poti2value = 730;


  if (poti1value>=30 && poti2value>=30 && poti1value<50 && poti2value<50) {
    pushMatrix();
    rotate(frameCount/PI/60);
    frosty(50);
    popMatrix();
    fill(255);
    textFont(f);
    textSize(14);
    text(frost, -60, 100);
  }

  if (poti1value>=50 && poti2value>=50 && poti1value<70 && poti2value<70) {
    pushMatrix();
    rotate(frameCount/PI/60);
    frosty(30);
    popMatrix();
  }
  if (poti1value>=70 && poti2value>=70) {
    value70();
  }
  if (poti1value>=80 && poti2value>=80 && poti1value<130 && poti2value<130) {
    value80();
  }     
  if (poti1value>=130 && poti2value>=130 && poti1value<160 && poti2value<160) {
    value130();
  }
  if (poti1value>=160 && poti2value>=160) {
    value160();
  }
  if (poti1value>=190 && poti2value>=190 && poti1value<200 && poti2value<200) {
    value190();
  }
  if (poti1value>=200 && poti2value>=200) {
    value200();
  }     
  if (poti1value>=230 && poti2value>=230) {
    value230();
  }     
  if (poti1value>=260 && poti2value>=260 && poti1value<290 && poti2value<290) {
    value260();
    //solid plate
    fill(255);
    textFont(f);
    textSize(14);
    text(hexagon, -135, 100);
  }

  // second stage more marks and sector plates growing start here
  if (poti1value>=290 && poti2value>=290) {
    value290();
  }

  if (poti1value>=300 && poti2value>=330) {
    value300();
  } 
  if (poti1value>=330 && poti2value>=330) {
    value330();
  }
  if (poti1value>=360 && poti2value>=360 && poti1value<400 && poti2value<400) {
    value360();
  } 
  //ticklish snowflakes by Pinja 
  //reset in poti 400, 430 and 460 by adding background and repeat the steps but backwards
  if (poti1value>=400 && poti2value>=400 && poti1value<430 && poti2value<430 ) {
    value400();
  }
  if (poti1value>=430 && poti2value>=430) {
    value430();
  } 
  if (poti1value>=460 && poti2value>=460) {
    value460();
  }   
  //arms for dendrite stellar grows
  if (poti1value>=490 && poti2value>=490 && poti1value<500 && poti2value<500 ) {
    value480();
  } 

//reset in poti
  if (poti1value>=500 && poti2value>=500) {
    value500();
  }
  if (poti1value>=530 && poti2value>=530) {
    value530();
  }

  if (poti1value>=560 && poti2value>=560 && poti1value<570 && poti2value<570) {
    value560();
  }
  
  //reset and backgrund added in potival 570
  if (poti1value>=570 && poti2value>=570) {
    value570();
  } 
  if (poti1value>=580 && poti2value>=580) {
    value580();
  } 
  if (poti1value>=590 && poti2value>=590) {
    value590();
  } 
  if (poti1value>=600 && poti2value>=600) {
    value600();
  }
  if (poti1value>=630 && poti2value>=630 && poti1value<630 && poti2value<630) {
    value630();
  } 
  
  //reset and added background
  if (poti1value>=660 && poti2value>=660 && poti1value<700 && poti2value<700) {

    value660();
  }
  /*if (poti1value>=690 && poti2value>=690) {
    value690();
  }*/
  
   //reset and added background
  if (poti1value>=700 && poti2value>=700) {
    value700();
  } 
  if (poti1value>=730 && poti2value>=730) {
    value730();
  } 
  if (poti1value>=760 && poti2value>=760) {
    value760();
  } 
  if (poti1value>=790 && poti2value>=790 && poti1value<800 && poti2value<800) {
    value790();
  } 

 //reset and added background
  if (poti1value>=800 && poti2value>=800 && poti1value<830 && poti2value<830) {
    value800();
  } 
  // fern stellar starts here
   //reset and added background
  if (poti1value>=830 && poti2value>=830 && poti1value<860 && poti2value<860) {
    value830();
  } 
   //reset and added background
  if (poti1value>=860 && poti2value>=860 && poti1value<890 && poti2value<890) {
    value860();
  }
 //reset and added background
  if (poti1value>=890 && poti2value>=890) {
    value890();
  } else 
  if (poti1value<10 && poti2value<10) {
    pushMatrix();
    background(0);
    rotate(frameCount/PI/60);
    wM();  //water molecule moving at Poti value 0
    popMatrix();
    fill(255);
    textFont(f);
    textSize(14);
    text(frost, -60, 100);
  }
}
 /* pushMatrix();

  text(v0, 222, 100);
  text(v1, 288, 100);

  text(poti1value, 222, 122);
  text(poti2value, 288, 122);
  popMatrix();
}*/
