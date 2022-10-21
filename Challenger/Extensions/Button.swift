//
//  File.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

extension UIView {

    func button(imgName: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: imgName), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    func navigationButton(setTitle: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .systemBackground
        button.setTitle(setTitle, for: .normal)
        button.accessibilityLabel = setTitle
        if #available(iOS 15.0, *) {
            button.configuration = .filled()
        } else {
            button.layer.cornerRadius = 30
        }
        button.setTitleColor(.systemYellow, for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        return button
    }
}
