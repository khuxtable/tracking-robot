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
 * Main program for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

void setup() {
    initSensor();
    initMotion();
    initPir();
}

int runTime = 3000;

void loop() {
    turnRight(10);
    turnLeft(20);
    turnRight(10);
    stopMotion();
    int pirValue = readPir();
    setSensorAngle(-30);
    setSensorAngle(30);
    setSensorAngle(0);
    delay(50);
}
