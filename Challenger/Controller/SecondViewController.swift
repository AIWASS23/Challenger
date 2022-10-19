//
//  SecondScreenView.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 14/10/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    var screen: SecondScreenView?

    override func loadView() {
        self.screen = SecondScreenView()
        self.view = self.screen
        screen?.buttonGroot.addTarget(self, action: #selector(navigate), for: .touchUpInside)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.tintColor = UIColor.systemYellow
    }

    @objc func navigate() {
        let nextPage = ThirdViewController()
        self.navigationController?.pushViewController(nextPage, animated: true)
    }
}
