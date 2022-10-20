//
//  ThirdScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 17/10/22.
//

import Foundation
import UIKit

class ThirdScreenView: UIView {

    lazy var pageTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Challenger"
        label.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
        label.textColor = .systemYellow
        return label
    }()

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

    lazy var translationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .systemBackground
        button.setTitle("Translation", for: .normal)
        button.accessibilityLabel = "Translation"
        if #available(iOS 15.0, *) {
            button.configuration = .filled()
        } else {
            button.layer.cornerRadius = 30
        }
        button.setTitleColor(.systemYellow, for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        return button
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        setGradientBackground()
        self.addSubview(pageTitle)
        self.addSubview(boxText)
        self.addSubview(translationButton)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            pageTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

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
//
//    func submitTextAPI() {
//        return GrootViewModel.addTranslateGroot(boxText.text)
//    }
}
