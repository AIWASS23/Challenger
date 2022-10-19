//
//  ThirdViewController.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 17/10/22.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {

    var screen: ThirdScreenView?

    override func loadView() {
        self.screen = ThirdScreenView()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
