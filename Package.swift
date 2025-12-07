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

let package = Package(
  name: "online-judge",
  dependencies: [
    .package(path: "../core-cloud/core-cloud-foundation")
  ],
  targets: [
    .target(
      name: "UVaOnlineJudge",
      dependencies: [
        .product(name: "CoreCloudFoundation", package: "core-cloud-foundation")
      ]
    ),
    .testTarget(
      name: "OnlineJudgeTests",
      dependencies: ["UVaOnlineJudge"],
      resources: [
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-0-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-0-out.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-1-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-1-out.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-2-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume100/10071-2-out.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-0-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-0-out.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-1-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-1-out.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-2-in.txt"),
        Resource.process("Resources/UVaOnlineJudge/Volume118/11805-2-out.txt")
      ]
    )
  ],
  cLanguageStandard: .c89
)
