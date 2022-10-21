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

        let button = sut.navigationButtonFirst

        XCTAssertEqual(button.tintColor, UIColor.systemBackground)
        XCTAssertNotNil(button.setTitle("Start", for: UIControl.State.normal))
        XCTAssertEqual(button.accessibilityLabel, "Start")
        XCTAssertNotNil(button.configuration)
        XCTAssertNotNil(button.setTitleColor(UIColor.systemYellow, for: UIControl.State.normal))
        XCTAssertNotNil(button.titleLabel?.font)
        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
    }

    func testPageTitle() throws {
        let title = sut.pageTitleFirst

        XCTAssertEqual(title.text, "Challenger")
        XCTAssertEqual(title.textColor, UIColor.systemYellow)
        XCTAssertFalse(title.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(title.font, UIFont.systemFont(ofSize: 40, weight: .heavy))
    }

    func testImagePage() throws {
        let image = sut.imagePage

        XCTAssertEqual(image.image!, UIImage(named: "interpreter"))
        XCTAssertFalse(image.translatesAutoresizingMaskIntoConstraints)
    }
}
