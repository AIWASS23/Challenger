//
//  ViewController.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 10/10/22.
//

import UIKit

class FirstViewController: UIViewController {

    var screen: FirstScreenView?

    override func loadView() {
        self.screen = FirstScreenView()
        self.view = self.screen
        screen?.navigationButton.addTarget(self, action: #selector(navigate), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func navigate() {
        let nextPage = SecondViewController()
        self.navigationController?.pushViewController(nextPage, animated: true)
    }
}
