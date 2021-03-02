/*
  one single water molecule tactile graphic LED animation
  0 to 255 with 1 ms delay and pause at peak brightness and switch to freezing water molecule structure i.e hexagon
*/
//UPDATE: 3:02:2020, 13:23. I bought Arduino Mega 2560

const int sensorPin = A0; //PIR sensor OUT
int val = 0; //variable for reading the pin status
int pirState = LOW; //no motion detected

//LEDs of the Intro Panel
const int wmaStructure = 12;
const int wmaHexagon1 = 11; // here the trick is that there will six led light and 3 and other 3 will pulse differently
const int wmaHexagon2 = 10;
const int solidHexagon = 9;
const int faCet = 8; //6 leds connected to in one animation
const int stellarDendrite = 7;
const int stellarDendrite2 = 6; //I need to use digi pin ~num otherwise the pulse doesn't work. as of now I put it on analog pins

//time interval for each interaction
int timeInterval = 1000;
int timeInterval1 = 3000;

void setup() {
  Serial.begin(9600);
  //initializing sensor as INPUT.
  pinMode(sensorPin, INPUT);

  //intilializing all the LEDs pin to OUTPUT
  pinMode(wmaStructure, OUTPUT);
  pinMode(wmaHexagon1, OUTPUT);
  pinMode(wmaHexagon2, OUTPUT);
  pinMode(solidHexagon, OUTPUT);
  pinMode(faCet, OUTPUT);
  pinMode(stellarDendrite, OUTPUT);
  pinMode(stellarDendrite2, OUTPUT);

}

void loop() {
  val = digitalRead(sensorPin); //read input value


  if (val == HIGH) { //check if the input in HIGH
    for (int i = 0; i < 3; i++) {
      wMa(); //turn led1 on
      wmaH();
      sH();
      fT();
      dS();

    }

  }

  if (pirState == LOW) {
    //we have just turned in
    Serial.println("Motion detected!");
    //we only want to print on the output change, not state
    pirState = HIGH;
  }
  else {
    digitalWrite(wmaStructure, LOW);
    digitalWrite(wmaHexagon1, LOW);
    digitalWrite(wmaHexagon2, LOW);
    digitalWrite(solidHexagon, LOW);
    digitalWrite(faCet, LOW);
    digitalWrite(stellarDendrite, LOW);
    digitalWrite(stellarDendrite2, LOW);

    if (pirState ==  HIGH) {

      //we have to turn of
      Serial.println("Motion ended!");
      // We only want to print on the output change, not state
      pirState = LOW;
    }
  }
}






void wMa() {

  float fadeInc, out;
  //rising
  for (fadeInc = 4.712; fadeInc < 6.283; fadeInc = fadeInc + 0.005) {
    out = sin(fadeInc) * 127.5 + 127.5; // brightness points multiply by range and offset
    analogWrite(wmaStructure, out);
    delay(1);
  }
  delay(timeInterval); //pause at peak brightness

  //fading out

  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.005) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(wmaStructure, out);
    delay(1);
  }
  //delay(timeInterval);

}


//led2a led2b total of 6 leds for the animation
void wmaH() {


  float fadeInc, out; //points the brightness jumps and output

  //first 3 leds pulsing till midpoint
  for (fadeInc = 4.712; fadeInc < 10.995; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(wmaHexagon1, out);
    delay(1);
  }

  //the rest of the 3 leds
  for (fadeInc = 4.712; fadeInc < 10.995; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(wmaHexagon2, out);
    delay(1);

  }
  delay(timeInterval);

  //then all the leds are at the brightest point
  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(wmaHexagon1, out);
    analogWrite(wmaHexagon2, out);
    delay(1);
  }
  //delay(timeInterval);
}


//led 4 solid Hexagon

void sH() {

  float fadeInc, out;
  //rising
  for (fadeInc = 3.157; fadeInc < 6.283; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(solidHexagon, out);
    delay(1);
  }
  delay(timeInterval);

  //fading out
  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(solidHexagon, out);
    delay(1);

  }
  //delay(timeInterval);

}


// led 5 has 7 leds for one animation. 6 bright points jump just like the sH and wMa but with more leds.

void fT() {

  float fadeInc, out;
  //rising
  for (fadeInc = 3.157; fadeInc < 6.283; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(faCet, out);
    delay(1);
  }
  delay(timeInterval);
  //fading out
  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.001) {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(faCet, out);
    delay(1);

  }
  //delay(timeInterval);

}

//led 5 dendriteStellar has 6 leds with the same pulse animation. simmer effect to achieve is when the range is just before 0

void dS() {

  // 7 led lights animation. middle LED with glow first, pause at peak brightness and

  float simmerInc, out;

  //fades in to brightess of the 1st led

  for (simmerInc = 4.712; simmerInc < 6.283; simmerInc = simmerInc + 0.001) {
    out = sin(simmerInc) * 127.5 + 127.5;
    analogWrite(stellarDendrite, out);

    delay(1);
  }

  //simmer pulse fade in and out fast
  for (simmerInc = 0; simmerInc < 4.712; simmerInc = simmerInc + 0.001) {
    out = sin(simmerInc) * 127.5 + 127.5;
    analogWrite(stellarDendrite, out);
    analogWrite(stellarDendrite2, out);
    delay(1);

  }
  //pause at peak brightness
  delay(timeInterval);

  //fades out
  for (simmerInc = 1.570; simmerInc < 4.712; simmerInc = simmerInc + 0.001) {
    out = sin(simmerInc) * 127.5 + 127.5;
    analogWrite(stellarDendrite, out);
    analogWrite(stellarDendrite2, out);
    delay(1);
  }

  delay(timeInterval);

}
