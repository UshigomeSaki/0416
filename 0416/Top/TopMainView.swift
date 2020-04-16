//
//  TopMainView.swift
//  0416
//
//  Created by ASW-研修１ on 2020/04/16.
//  Copyright © 2020 ASW-研修１. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainViewDelegate: NSObjectProtocol{
    func didSelectItemAt()
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView{
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    var labels:[String]=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
    var labels2:[String]=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewSecondCell")
    }
}
// MARK: - Protocol
extension TopMainView :UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath)as? TopMainCollectionViewCell else {return UICollectionViewCell()}
        
        cell.label.text=labels[indexPath.row]
        
        guard let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewSecondCell", for: indexPath)as? TopMainCollectionViewSecondCell else {return UICollectionViewCell()}
        
        secondCell.labels.text=labels2[indexPath.row]
         
        switch indexPath.row {
        case 0,2,4,6,8,10,12,14:
            return secondCell
        default:
            return cell
        }
    }
    
}

extension TopMainView :UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if let delegate = delegate{delegate.didSelectItemAt()}
    }
}

// MARK: - Method
extension TopMainView {
    func setDelegate(){
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}
