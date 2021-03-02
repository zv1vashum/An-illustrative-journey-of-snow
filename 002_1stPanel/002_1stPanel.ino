/* I am using Elegoo UNO R3
  Adding four different LEDs interaction in chornological order trigerred once by the PIR sensor
*/
const int sensorPin = A0; //PIR sensor OUT
int val = 0; //variable for reading the pin status
int pirState = LOW; //no motion detected

//LEDs of the Intro Panel
const int led9Cloud = 11;
const int waterMolecule = 10;
const int freezingWM = 9;
const int solidHexPlate = 6;
const int hexMarksPlate = 5;

//timing for all the LEDs animation
int delayTime = 60;
int timeInterval = 5000;

void setup() {

  Serial.begin(9600);
  //initializing sensor as INPUT.
  pinMode(sensorPin, INPUT);

  //intilializing all the LEDs pin to OUTPUT
  pinMode(led9Cloud, OUTPUT);
  pinMode(waterMolecule, OUTPUT);
  pinMode(freezingWM, OUTPUT);
  pinMode(solidHexPlate, OUTPUT);
  pinMode(hexMarksPlate, OUTPUT);
}

void loop() {
  // initializing sensor to read
  val = digitalRead(sensorPin); //read input value


  if (val == HIGH) { //check if the input in HIGH
    //for (int i = 0; i < 3; i++) {
      cloudLED(); //turn led1 on
      wMoleculeLED();
      WMFreezeLED();
      HexPlateLED();
      hexMarksLED();

   // }

  }

  if (pirState == LOW) {
    //we have just turned in
    Serial.println("Motion detected!");
    //we only want to print on the output change, not state
    pirState=HIGH;
    delay(500);
  }
  else {
    digitalWrite(led9Cloud, LOW);
    digitalWrite(waterMolecule, LOW);
    digitalWrite(freezingWM, LOW);
    digitalWrite(solidHexPlate, LOW);
    digitalWrite(hexMarksPlate, LOW);

    if (pirState ==HIGH) {

      //we have to turn of
      Serial.println("Motion ended!");
      // We only want to print on the output change, not state
      pirState = LOW;
    }
  }
}





void cloudLED() {

  float fade, out; //sin waves working smooth in decimal numbers

  for (fade = 4.712; fade < 10.995; fade = fade + 0.005) {  //starts from o brightness to full bright. 4.712 is -1.0 and 10.995 goes to 1.0 range

    /* notes from sparkFun
      The sine function will always return a floating-point number that ranges from -1 to +1.
      since we want to use the analogWrite() function to drive the LED at various brightnesses; analogWrite() takes a value from 0 to 255,
      not -1 to +1.
      Here's a shortcut when picking range and offset: if you're trying to get to a number that ranges from 0 to n, use 1/2 n for both
      the range and offset. For example, we want our wave to range from 0 to 255 for analogWrite(), so we'll use 127.5 for both our range
      and offset (127.5 = 255 / 2). Multiplying -1 to +1 by 127.5 gives us a range from -127.5 to +127.5. (Multiplication always
      happens before addition when the computer is processing an equation.) Then when we add in the offset of 127.5, we get a range from
      0 to 255!
    */

    out = sin(fade) * 127.5 + 127.5; //sin(angle)*range+offset

    analogWrite(led9Cloud, out);
    delay(1);
  }
  delay(delayTime);
}


void wMoleculeLED() {

  float fadeInc, out;

  //rising
  for (fadeInc = 4.712; fadeInc < 6.283; fadeInc = fadeInc + 0.01)
  {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(waterMolecule, out);
    delay(1);
  }
  delay(3000); //3 secs pause to brightness

  //falling or fading off to dark
  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.01)
  {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(waterMolecule, out);
    delay(1);
  }
  delay(delayTime);

}


void WMFreezeLED() {

  float fadeInc, out;

  //rising

  for (fadeInc = 4.712; fadeInc < 6.283; fadeInc = fadeInc + 1.0995) //where 4.712 is -1 and 6.283 0
  {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(freezingWM, out);
    delay(1);
  }
  delay(3000); //3 secs pause to brightness

  //falling or fading off to dark
  for (fadeInc = 1.570; fadeInc < 4.712; fadeInc = fadeInc + 0.001)//brightest to 0
  {
    out = sin(fadeInc) * 127.5 + 127.5;
    analogWrite(freezingWM, out);
    delay(1);
  }
  delay(delayTime);
}


void HexPlateLED() {
  float in, out;

  // rising
  for (in = 4.712; in < 10.995; in = in + 0.001)
  {
    out = sin(in) * 127.5 + 127.5;
    analogWrite(solidHexPlate, out);
    delay(1);
  }

}


void hexMarksLED () {

  float in, out;

  // rising
  for (in = 4.712; in < 6.283; in = in + 0.001)
  {
    out = sin(in) * 127.5 + 127.5;
    analogWrite(hexMarksPlate, out);
    delay(1);
  }

  delay(timeInterval); // pause at peak brightness

  //falling to off
  for (in = 1.570; in < 4.712; in = in +  0.001) {
    out = sin(in) * 127.5 + 127.5;
    analogWrite(hexMarksPlate, out);
    delay(2);
  }

  delay(1000);

}
