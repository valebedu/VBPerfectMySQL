//
//  Package.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

import PackageDescription

let package = Package(
    name: "VabeMySQL",
    targets: [
        Target(
            name: "VabeMySQL",
            dependencies: []
        )
    ],
    dependencies: [
        .Package(
            url: "https://github.com/PerfectlySoft/Perfect-MySQL.git",
            versions: Version(0,0,0) ..< Version(10,0,0)
        )
    ],
    exclude: []
)
