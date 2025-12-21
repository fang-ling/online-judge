//
//  UVaOnlineJudgeTests.swift
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

import Testing
@testable import UVaOnlineJudge

@Test
func runUVaOnlineJudgeTests() throws {
  let tests = [
    (uva10055, 10055, 7),
    (uva10071, 10071, 3),
    (uva11805, 11805, 3),
    (uva13025, 13025, 1)
  ]

  for test in tests {
    try run(main: test.0, for: test.1, caseCount: test.2).forEach { result in
      #expect(result.0 == result.1)
    }
  }
}
