//
//  ChallengerTests.swift
//  ChallengerTests
//
//  Created by Marcelo De Araújo on 10/10/22.
//

import XCTest
@testable import Challenger

class FirstScreenViewTests: XCTestCase {

    let sut = FirstScreenView()

    func testNavigationButton() throws {

        let button = sut.navigationButton

        XCTAssertEqual(button.tintColor, UIColor.white)
        XCTAssertNotNil(button.setTitle("Start", for: UIControl.State.normal))
        XCTAssertEqual(button.accessibilityLabel, "Start")
        XCTAssertNotNil(button.configuration)
        XCTAssertNotNil(button.setTitleColor(UIColor.red, for: UIControl.State.normal))
        XCTAssertNotNil(button.titleLabel?.font)
        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
    }
}
