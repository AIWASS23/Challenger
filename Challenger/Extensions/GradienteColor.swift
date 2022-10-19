//
//  GradienteColor.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 14/10/22.
//

import Foundation
import UIKit

extension UIView {

    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()

        gradientLayer.colors = [
            UIColor.systemPurple.cgColor,
            UIColor.systemPink.cgColor,
            UIColor.secondarySystemBackground.cgColor,
            UIColor.systemPink.cgColor,
            UIColor.systemPurple.cgColor
        ]
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
//        gradientLayer.locations = [0,1]
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
      }
}
