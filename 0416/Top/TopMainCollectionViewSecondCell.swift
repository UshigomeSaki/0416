//
//  TopMainCollectionViewSecondCell.swift
//  0416
//
//  Created by ASW-研修１ on 2020/04/16.
//  Copyright © 2020 ASW-研修１. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainCollectionViewSecondCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewSecondCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewSecondCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewSecondCellDelegate? = nil
    @IBOutlet weak var labels: UILabel!
}
// MARK: - Life cycle
extension TopMainCollectionViewSecondCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension TopMainCollectionViewSecondCell {
}
