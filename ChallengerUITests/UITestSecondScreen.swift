//
//  UITestSecondScreen.swift
//  ChallengerUITests
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import XCTest
@testable import Challenger

class UITestSecondScreen: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["testing"]
        app.launch()
    }

    func UItestButtonGrootFlow() throws {
        let button = app.buttons["groot"]
        XCTAssertTrue(button.exists)
        button.tap()
        XCTAssertFalse(button.exists)
    }

    func UItestTitle() throws {
        let title = app.staticTexts["Choose Translation"]
        XCTAssertTrue(title.exists)
    }
}
