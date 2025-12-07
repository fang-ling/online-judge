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

@Suite(.serialized)
struct UVaOnlineJudgeTests {
  @Test
  func testUVa10071() throws {
    try run(main: uva10071, for: 10071, caseCount: 3).forEach { result in
      #expect(result.0 == result.1)
    }
  }

  @Test
  func testUVa11805() throws {
    try run(main: uva11805, for: 11805, caseCount: 3).forEach { result in
      #expect(result.0 == result.1)
    }
  }
}
