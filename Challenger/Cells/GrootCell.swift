//
//  File.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 24/10/22.
//

import Foundation
import UIKit

class GrootCell: UITableViewCell {

    var titleLabel: UILabel {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func configure(_ groot: GrootViewModel) {
        contentView.addSubview(titleLabel)
    }
}
