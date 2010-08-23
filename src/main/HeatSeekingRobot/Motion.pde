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

#include <Servo.h>
#include "PinAssignments.h"

/*
 * Motion handling for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

Servo leftServo;
Servo rightServo;

void initMotion() {
    leftServo.attach(LEFT_SERVO_PIN);
    rightServo.attach(RIGHT_SERVO_PIN);
    stopMotion();
}

#define TURN_TIME   2000

void goBackward() {
    leftServo.write(0);
    rightServo.write(180);
}

void goForward() {
    leftServo.write(180);
    rightServo.write(0);
}

void stopMotion() {
    leftServo.write(95);
    rightServo.write(95);
}

void turnLeft(int angle) {
    leftServo.write(0);
    rightServo.write(0);
    delay((long) TURN_TIME * angle / 90);
}

void turnRight(int angle) {
    leftServo.write(180);
    rightServo.write(180);
    delay((long) TURN_TIME * angle / 90);
}
