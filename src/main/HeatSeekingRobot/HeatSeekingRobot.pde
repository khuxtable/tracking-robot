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
 * Main program for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

void setup() {
    initSensor();
    initMotion();
    initPir();
}

void loop() {
    int pirValue = readPir();
    switch (pirValue) {
    case PIR_CENTER:
        goForward();
        delay(200);
        break;
    case PIR_LEFT:
        turnLeft(30);
        break;
    case PIR_RIGHT:
        turnRight(30);
        break;
    default:
        delay(200);
        break;
    }
    delay(50);
}
