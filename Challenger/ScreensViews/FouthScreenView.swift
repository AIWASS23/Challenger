//
//  FouthScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

class FouthScreenView: UIView {

    lazy var pageTitleFouth = self.pageTitle(text: "Challenger", ofSize: 40)

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.addSubview(navigationButton)
//        self.addSubview(pageTitle)
//        self.addSubview(imagePage)
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        setGradientBackground()
//        self.addSubview(navigationButton)
//        self.addSubview(pageTitle)
//        self.addSubview(imagePage)
//        setupConstraints()
//    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        setGradientBackground()
        self.addSubview(pageTitleFouth)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            pageTitleFouth.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitleFouth.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
        ])
    }
}
