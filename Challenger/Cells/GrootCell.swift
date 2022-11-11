//
//  File.swift
//  Challenger
//
//  Created by Marcelo De Araújo on 24/10/22.
//

import Foundation
import UIKit
import SwiftUI

class GrootCell: UITableViewCell {

    var translationTitleLabel: UILabel {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    var translatedTitleLabel: UILabel {

        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    var textTitleLabel: UILabel {

        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
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
        translationTitleLabel.text = groot.translation
        translatedTitleLabel.text = groot.translated

        contentView.addSubview(translationTitleLabel)
        contentView.addSubview(translatedTitleLabel)
        contentView.addSubview(textTitleLabel)
    }
}

struct GrootCellRepresentable: UIViewRepresentable {

    func makeUIView(context: Context) -> some UIView {
        let cell = GrootCell(style: .default, reuseIdentifier: "GrootCell")
        cell.configure(GrootViewModel(groot: ResponseGroot(success: ResponseGrootTotal(total: 1), contents: ResponseGrootContent(translated: "text", text: "text", translation: "text"))))
        return cell
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
struct GrootCell_Previews: PreviewProvider {
    static var previews: some View {
        GrootCellRepresentable()
    }
}
