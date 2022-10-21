//
//  FourViewController.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

class FouthViewController: UIViewController {
    var screen: FouthScreenView?

    override func loadView() {
        self.screen = FouthScreenView()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
