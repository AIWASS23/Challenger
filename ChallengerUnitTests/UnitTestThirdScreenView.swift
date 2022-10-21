//
//  UnitTestThirdScreenView.swift
//  ChallengerUITests
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import XCTest
@testable import Challenger

class UnitTestThirdScreenView: XCTestCase {

    let sut = ThirdScreenView()

    func testPageTitle() throws {
        let title = sut.pageTitleThird

        XCTAssertEqual(title.text, "Challenger")
        XCTAssertFalse(title.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(title.textColor, UIColor.systemYellow)
        XCTAssertEqual(title.font, UIFont.systemFont(ofSize: 40, weight: .heavy))
    }

    func testButtonTranslation() throws {
        let button = sut.translationButton

        XCTAssertEqual(button.tintColor, UIColor.systemBackground)
        XCTAssertNotNil(button.setTitle("Translation", for: UIControl.State.normal))
        XCTAssertEqual(button.accessibilityLabel, "Translation")
        XCTAssertNotNil(button.configuration)
        XCTAssertNotNil(button.setTitleColor(UIColor.systemYellow, for: UIControl.State.normal))
        XCTAssertNotNil(button.titleLabel?.font)
        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
    }

    func testBoxtext() throws {
        let boxText = sut.boxText

    }

}
