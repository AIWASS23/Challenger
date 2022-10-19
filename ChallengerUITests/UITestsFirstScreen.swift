//
//  ChallengerUITests.swift
//  ChallengerUITests
//
//  Created by Marcelo De Araújo on 10/10/22.
//

import XCTest
@testable import Challenger

class UITestsFirstScreen: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["testing"]
        app.launch()
    }

    func UItestButtonFlow() throws {
        let button = app.buttons["Start"]
        XCTAssertTrue(button.exists)
        button.tap()
        XCTAssertFalse(button.exists)
    }

    func UItestTitle() throws {
        let title = app.staticTexts["Challenger"]
        XCTAssertTrue(title.exists)
    }

    func UItestImage() throws {
        let image = app.images["interpreter"]
        XCTAssertTrue(image.exists)
    }

}
