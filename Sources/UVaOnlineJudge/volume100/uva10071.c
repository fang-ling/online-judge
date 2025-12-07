//
//  uva10071.c
//  online-judge
//
//  Created by Fang Ling on 2025/12/2.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

/*
 * 10071 Back to High School Physics
 *
 * A particle has initial velocity and acceleration. If its velocity after
 * certain time is v then what will its displacement be in twice of that time?
 *
 * Input:
 * The input will contain two integers in each line. Each line makes one set of
 * input. These two integers denote the value of v (−100 ≤ v ≤ 100) and
 * t (0 ≤ t ≤ 200) (t means at the time the particle gains that velocity)
 *
 * Output:
 * For each line of input print a single integer in one line denoting the
 * displacement in double of that time.
 */

#include "uva10071.h"

#include <stdio.h>

#include <CoreCloudFoundation.h>

void uva10071() {
  CCFoundation_Int64 v = 0;
  CCFoundation_Int64 t = 0;
  while (scanf("%lld %lld", &v, &t) == 2) {
    printf("%lld\n", 2 * v * t);
  }
}
