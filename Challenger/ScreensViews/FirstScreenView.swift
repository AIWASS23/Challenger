//
//  FirstScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 13/10/22.
//

import UIKit

class FirstScreenView: UIView {

    lazy var navigationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .systemBackground
        button.setTitle("Start", for: .normal)
        button.accessibilityLabel = "Start"
        if #available(iOS 15.0, *) {
            button.configuration = .filled()
        } else {
            button.layer.cornerRadius = 30
        }
        button.setTitleColor(.systemYellow, for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        return button
    }()

    lazy var pageTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Challenger"
        label.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
        label.textColor = .systemYellow
        return label
    }()

    lazy var imagePage: UIImageView = {
        let image = UIImage(named: "interpreter")
        let imagePage = UIImageView(image: image)
        imagePage.translatesAutoresizingMaskIntoConstraints = false
        return imagePage
    }()

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

    override func layoutSubviews() {
        super.layoutSubviews()
        setGradientBackground()
        self.addSubview(navigationButton)
        self.addSubview(pageTitle)
        self.addSubview(imagePage)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([

            navigationButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            navigationButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            navigationButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 750),
            navigationButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            navigationButton.heightAnchor.constraint(equalToConstant: 40),

            pageTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 95),
            pageTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

            imagePage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imagePage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imagePage.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
            imagePage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150)

        ])
    }
}
