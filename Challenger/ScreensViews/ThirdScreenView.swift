//
//  ThirdScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 17/10/22.
//

import Foundation
import UIKit

class ThirdScreenView: UIView {

    var didTapButton: ((String?) -> Void)?

    lazy var boxText: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        textView.textAlignment = .natural
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 9
        textView.textColor = .black
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    lazy var pageTitleThird = self.pageTitle(text: "Challenger", ofSize: 40)
    lazy var translationButton = self.navigationButton(setTitle: "Translation")

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        setGradientBackground()
//        self.addSubview(pageTitle)
//        self.addSubview(boxText)
//        self.addSubview(translationButton)
//        setupConstraints()
//    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        setGradientBackground()
        self.addSubview(pageTitleThird)
        self.addSubview(boxText)
        self.addSubview(translationButton)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            pageTitleThird.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitleThird.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

            boxText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            boxText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            boxText.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),

            translationButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            translationButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            translationButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 750),
            translationButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            translationButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
