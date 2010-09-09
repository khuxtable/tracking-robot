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
 * Collision detection code for an object tracking robot.
 *
 * Author: Kathryn Huxtable
 */

void initCollision() {
    pinMode(LEFT_COLLISION_SWITCH, INPUT);
    pinMode(RIGHT_COLLISION_SWITCH, INPUT);
}

boolean isLeftCollision() {
    return digitalRead(LEFT_COLLISION_SWITCH) == HIGH;
}

boolean isRightCollision() {
    return digitalRead(RIGHT_COLLISION_SWITCH) == HIGH;
}
