//
//  SecondScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 17/10/22.
//

import Foundation
import UIKit

class SecondScreenView: UIView {

    lazy var pageTitle: UILabel = {
        let label = UILabel()
        label.text = "Choose Translation"
        label.font = UIFont.systemFont(ofSize: 36, weight: .heavy)
        label.textColor = .systemYellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var buttonGroot: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "groot"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        setGradientBackground()
        self.addSubview(pageTitle)
        self.addSubview(buttonGroot)
        setupConstraints()
    }

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.addSubview(pageTitle)
//        self.addSubview(buttonGroot)
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            pageTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            pageTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

            buttonGroot.heightAnchor.constraint(equalToConstant: 60),
            buttonGroot.widthAnchor.constraint(equalToConstant: 60),
            buttonGroot.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            buttonGroot.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 200)
        ])
    }
}
