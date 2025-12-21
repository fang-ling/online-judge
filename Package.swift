// swift-tools-version: 6.2

//
//  Package.swift
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

import PackageDescription

let dependencies: [(String, PackageDescription.Version)] = [
  ("https://github.com/fang-ling/foundation-framework", "1.1.0")
]

let ioData = [
  ("UVaOnlineJudge", 100, 10055, 7),
  ("UVaOnlineJudge", 100, 10071, 3),
  ("UVaOnlineJudge", 118, 11805, 3),
  ("UVaOnlineJudge", 130, 13025, 1)
]

let package = Package(
  name: "online-judge",
  dependencies: dependencies.map({ .package(url: $0.0, exact: $0.1) }),
  targets: [
    .target(
      name: "UVaOnlineJudge",
      dependencies: [
        .product(name: "FoundationFramework", package: "foundation-framework")
      ]
    ),
    .testTarget(
      name: "OnlineJudgeTests",
      dependencies: ["UVaOnlineJudge"],
      resources: ioData
        .map({ datum in
          [
            (0 ..< datum.3).map({
              Resource.process(
                "Resources/\(datum.0)/Volume\(datum.1)/\(datum.2)-\($0)-in.txt"
              )
            }),
            (0 ..< datum.3).map({
              Resource.process(
                "Resources/\(datum.0)/Volume\(datum.1)/\(datum.2)-\($0)-out.txt"
              )
            })
          ].flatMap({ $0 })
        })
        .flatMap({ $0 })
    )
  ],
  cLanguageStandard: .c89
)
