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
        textView.layer.cornerRadius = 9
        textView.textColor = .white
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        setGradientBackground()
        self.addSubview(pageTitle)
        self.addSubview(boxText)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            boxText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            boxText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            boxText.topAnchor.constraint(equalTo: self.topAnchor, constant: 300),

            pageTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
        ])
    }
//
//    func submitTextAPI() {
//        return GrootViewModel.addTranslateGroot(boxText.text)
//    }

    
}
