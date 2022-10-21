//
//  SecondScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 17/10/22.
//

import Foundation
import UIKit

class SecondScreenView: UIView {

    let pageTitle: UILabel = {
        let label = UILabel()
        label.text = "Choose Translation"
        label.font = UIFont.systemFont(ofSize: 36, weight: .heavy)
        label.textColor = .systemYellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var interpreterButton = self.button(imgName: "interpreter")
    lazy var buttonGroot = self.button(imgName: "groot")

    override func didMoveToWindow() {
        super.didMoveToWindow()
        setGradientBackground()
        self.addSubview(interpreterButton)
        self.addSubview(pageTitle)
        self.addSubview(buttonGroot)
        setupConstraints()
    }
    // executa depois do layout da view ter sido contruido na tela, inclusive depois de aplicar constraints
    // sempre que alguma coisa no layout da view mudar, roda de novo esse metodo
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
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
            buttonGroot.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 200),

            interpreterButton.heightAnchor.constraint(equalToConstant: 60),
            interpreterButton.widthAnchor.constraint(equalToConstant: 60),
            interpreterButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -100),
            interpreterButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0)
        ])
    }
}
