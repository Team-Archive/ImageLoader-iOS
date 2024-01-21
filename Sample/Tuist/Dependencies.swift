//
//  Dependencies.swift
//  Config
//
//  Created by Aaron Hanwe LEE on 2022/08/10.
//


import ProjectDescription

let dependencies = Dependencies(
  carthage: nil,
  swiftPackageManager: SwiftPackageManagerDependencies(
    [
      .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .exact("7.10.2"))
    ],
    productTypes: [
      "Kingfisher": .staticFramework
    ],
    baseSettings: .settings(
      configurations: [
        .debug(name: .debug),
        .release(name: .release),
      ]
    ),
    targetSettings: [:]
  ),
  platforms: [.iOS]
)
