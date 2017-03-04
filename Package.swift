//
//  Package.swift
//  VBPerfectMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

import PackageDescription

let package = Package(
    name: "VBPerfectMySQL",
    targets: [
        Target(
            name: "VBPerfectMySQL",
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
