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
    var didTapButton: ((String?) -> Void)?

    override func loadView() {
        self.screen = ThirdScreenView()
        self.view = self.screen
        screen?.translationButton.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        screen?.translationButton.addTarget(self, action: #selector(navigate), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        screen?.didTapButton = { [weak self] test in
            self?.handleText(text: test)
        }
    }

    private func handleText(text: String?) {
        if let text = text {
            Task {
                let param = PostGroot(text: text)
                let response = await API.getAPI(text: param)

                switch response {
                case .success(let model):
                    print(model)
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }

    @objc func buttonTap() {
        let test = screen?.boxText.text
        didTapButton?(test)
    }

    @objc func navigate() {
        let nextPage = FouthViewController()
        self.navigationController?.pushViewController(nextPage, animated: true)
    }
}
