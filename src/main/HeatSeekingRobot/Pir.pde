/*
 * Copyright (c) 2010 Kathryn Huxtable
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "PinAssignments.h"
#include "Pir.h"

/*
 * Passive Infrared detector (PIR) for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

// The time in milliseconds we give the sensor to calibrate.
// (10-60 secs according to the datasheet.)
#define CALIBRATION_TIME 15000

/////////////////////////////
//SETUP
void initPir() {
    pinMode(LEFT_PIR_PIN, INPUT);
    pinMode(RIGHT_PIR_PIN, INPUT);

    pinMode(LEFT_LED_PIN, OUTPUT);
    pinMode(RIGHT_LED_PIN, OUTPUT);
    pinMode(CENTER_LED_PIN, OUTPUT);

    digitalWrite(LEFT_PIR_PIN, LOW);
    digitalWrite(RIGHT_PIR_PIN, LOW);

    digitalWrite(LEFT_LED_PIN, HIGH);
    digitalWrite(RIGHT_LED_PIN, HIGH);
    digitalWrite(CENTER_LED_PIN, HIGH);

    //give the sensor some time to calibrate
    delay(CALIBRATION_TIME);
    digitalWrite(LEFT_LED_PIN, LOW);
    digitalWrite(RIGHT_LED_PIN, LOW);
    digitalWrite(CENTER_LED_PIN, LOW);

    // Alert the user that we're calibrated.
    delay(500);
    digitalWrite(LEFT_LED_PIN, HIGH);
    digitalWrite(RIGHT_LED_PIN, HIGH);
    digitalWrite(CENTER_LED_PIN, HIGH);
    delay(50);
}

int readPir() {

    boolean leftOn = digitalRead(LEFT_PIR_PIN);
    boolean rightOn = digitalRead(RIGHT_PIR_PIN);
    if (leftOn && rightOn) {
        digitalWrite(LEFT_LED_PIN, HIGH);
        digitalWrite(RIGHT_LED_PIN, HIGH);
        digitalWrite(CENTER_LED_PIN, LOW);
        return PIR_CENTER;
    } else if (leftOn) {
        digitalWrite(LEFT_LED_PIN, LOW);
        digitalWrite(RIGHT_LED_PIN, HIGH);
        digitalWrite(CENTER_LED_PIN, HIGH);
        return PIR_LEFT;
    } else if (rightOn) {
        digitalWrite(LEFT_LED_PIN, HIGH);
        digitalWrite(RIGHT_LED_PIN, LOW);
        digitalWrite(CENTER_LED_PIN, HIGH);
        return PIR_RIGHT;
    } else {
        digitalWrite(LEFT_LED_PIN, HIGH);
        digitalWrite(RIGHT_LED_PIN, HIGH);
        digitalWrite(CENTER_LED_PIN, HIGH);
        return PIR_NONE;
    }
}
