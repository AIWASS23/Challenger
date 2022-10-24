//
//  FourViewController.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 21/10/22.
//

import Foundation
import UIKit

class FouthViewController: UITableViewController {

    private let viewModel = GrootListViewModel()
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
        viewModel.groots.count
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60.0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GrootCell", for: indexPath) as? GrootCell else {
            fatalError("GrootCell is not defined")
        }
        let groot = viewModel.groots[indexPath.row]
        cell.configure(groot)
        return cell
    }

    internal func translateGroot() async {
        await viewModel.fetchGroots(text: text.boxText.text)
        DispatchQueue.main.async { [weak self] in
            self?.tableView.reloadData()
        }
    }
}
