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

/*
 * Main program for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

#define scanThreshold 30

void setup() {
    initCollision();
    //    initSensor();
    initMotion();
    initPing();
}

void loop() {
    if (isLeftCollision()) {
        turnRight(10);
        delay(50);
    } else if (isRightCollision()) {
        turnLeft(10);
        delay(50);
    } else {
        int distance = getPing();

        if (distance == 0) {
            //stopMotion();
            delay(50);
        } else if (distance > 0 && distance <= scanThreshold) {
            // Avoid obstacle.
            turnRight(10);
            delay(50);
        } else {
            goForward();
            delay(50);
        }
    }
}
