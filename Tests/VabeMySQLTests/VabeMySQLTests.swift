//
//  VabeMySQLTests.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

import XCTest
@testable import VabeMySQL

class VabeMySQLTests: XCTestCase
{
    func testExample()
    {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let text = "Hello, World!"
        XCTAssertEqual(text, "Hello, World!")
    }

    static var allTests : [(String, (VabeMySQLTests) -> () throws -> Void)]
    {
        return [
            ("testExample", testExample)
        ]
    }
}
