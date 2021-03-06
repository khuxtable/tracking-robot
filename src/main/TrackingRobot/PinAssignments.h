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

/*
 * Pin assignments for an object tracking robot.
 *
 * Author: Kathryn Huxtable
 */

// Digital pins to control the servos.
#define SENSOR_SERVO_PIN        7
#define RIGHT_SERVO_PIN         8
#define LEFT_SERVO_PIN          9

// Digital pin to read PING))) sensor.
#define PING_PIN                4

// Digital pins to read collision switches.
#define LEFT_COLLISION_SWITCH   5
#define RIGHT_COLLISION_SWITCH  6

// Digital pins to signal PIR values.
#define LEFT_LED_PIN            10
#define RIGHT_LED_PIN           11
#define CENTER_LED_PIN          12
