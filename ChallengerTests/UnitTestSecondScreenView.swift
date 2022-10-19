//
//  UnitTestSecondScreenView.swift
//  ChallengerTests
//
//  Created by Marcelo De Araújo on 19/10/22.
//

import XCTest
@testable import Challenger

class UnitTestSecondScreenView: XCTestCase {

    let sut = SecondScreenView()

    func testPageTitle() throws {
        let title = sut.pageTitle

        XCTAssertEqual(title.text, "Choose Translation")
        XCTAssertFalse(title.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(title.textColor, UIColor.systemYellow)
        XCTAssertEqual(title.font, UIFont.systemFont(ofSize: 36, weight: .heavy))
    }

    func testButtonGroot() throws {
        let button = sut.buttonGroot

        XCTAssertNotNil(button.setImage(UIImage(named: "groot"), for: UIControl.State.normal))
        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
    }

}
