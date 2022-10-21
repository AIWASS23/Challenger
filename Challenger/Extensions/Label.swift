//
//  Label.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

extension UIView {

    func pageTitle(text: String, ofSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: ofSize, weight: .heavy)
        label.textColor = .systemYellow
        return label
    }
}
