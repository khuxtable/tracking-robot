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
 * Sensor tower handling for a heat seeking robot.
 *
 * Author: Kathryn Huxtable
 */

#define DELAY_TIME  50

int currentSensorAngle;

Servo sensorServo;

void initSensor() {
    sensorServo.attach(SENSOR_SERVO_PIN);
    setSensorAngle(0);
}

int getSensorAngle() {
    return currentSensorAngle;
}

void setSensorAngle(int angle) {
    sensorServo.write(angle + 90);
    currentSensorAngle = angle;
    delay(DELAY_TIME);
}
