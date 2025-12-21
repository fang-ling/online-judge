//
//  uva10055.c
//  online-judge
//
//  Created by Fang Ling on 2025/12/21.
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
 * 10055 Hashmat the brave warrior
 *
 * Hashmat is a brave warrior who with his group of young soldiers moves from
 * one place to another to fight against his opponents. Before Fighting he just
 * calculates one thing, the difference between his soldier number and the
 * opponent’s soldier number. From this difference he decides whether to fight
 * or not. Hashmat’s soldier number is never greater than his opponent.
 *
 * Input:
 * The input contains two numbers in every line. These two numbers in each line
 * denotes the number soldiers in Hashmat’s army and his opponent’s army or vice
 * versa. The input numbers are not greater than 2**32. Input is terminated by
 * ‘End of File’.
 *
 * Output:
 * For each line of input, print the difference of number of soldiers between
 * Hashmat’s army and his opponent’s army. Each output should be in seperate
 * line.
 */

#include "uva10055.h"

#include <stdio.h>

#include <FoundationFramework.h>

void uva10055() {
  Foundation_Int64 lhs = 0;
  Foundation_Int64 rhs = 0;
  while (scanf("%lld %lld", &lhs, &rhs) == 2) {
    printf("%lld\n", Foundation_Int64_MakeAbsolute(lhs - rhs));
  }
}
