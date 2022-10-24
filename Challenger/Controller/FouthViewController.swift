//
//  FourViewController.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

class FouthViewController: UITableViewController {

    private let vm = GrootViewModel()
    private let text = ThirdScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        Task {
            await translateGroot()
        }
    }

    internal func configureUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Groot"
        tableView.register(UITableView.self, forCellReuseIdentifier: "GrootCell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.groots.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "GrootCell", for: indexPath)
        let groot = vm.groots[indexPath.row]

        var content = cell.defaultContentConfiguration()

        cell.contentConfiguration = content
        return cell
    }

    internal func translateGroot() async {
        await vm.fetchGroots(text: text.boxText.text)
        DispatchQueue.main.async { [weak self] in
            self?.tableView.reloadData()
        }
    }
}
