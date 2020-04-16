//
//  TopMainCollectionViewCell.swift
//  0416
//
//  Created by ASW-研修１ on 2020/04/16.
//  Copyright © 2020 ASW-研修１. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainCollectionViewCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewCellDelegate? = nil
    @IBOutlet weak var label: UILabel!
}
// MARK: - Life cycle
extension TopMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension TopMainCollectionViewCell {
}
