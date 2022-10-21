//
//  FirstScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 13/10/22.
//

import UIKit

class FirstScreenView: UIView {

    lazy var imagePage: UIImageView = {
        let image = UIImage(named: "interpreter")
        let imagePage = UIImageView(image: image)
        imagePage.translatesAutoresizingMaskIntoConstraints = false
        return imagePage
    }()

    lazy var navigationButtonFirst = self.navigationButton(setTitle: "Start")
    lazy var pageTitleFirst = self.pageTitle(text: "Challenger", ofSize: 40)

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
        super.layoutSubviews()
        setGradientBackground()
        self.addSubview(navigationButtonFirst)
        self.addSubview(pageTitleFirst)
        self.addSubview(imagePage)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            navigationButtonFirst.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            navigationButtonFirst.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            navigationButtonFirst.topAnchor.constraint(equalTo: self.topAnchor, constant: 750),
            navigationButtonFirst.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            navigationButtonFirst.heightAnchor.constraint(equalToConstant: 40),

            pageTitleFirst.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitleFirst.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

            imagePage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imagePage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imagePage.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
            imagePage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150)

        ])
    }
}
