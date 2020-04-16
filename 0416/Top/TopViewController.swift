//
//  TopViewController.swift
//  0416
//
//  Created by ASW-研修１ on 2020/04/16.
//  Copyright © 2020 ASW-研修１. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var mainView: TopMainView!
}
// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension TopViewController:TopMainViewDelegate{
    func didSelectItemAt() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
    
}
// MARK: - method
extension TopViewController {
    func setDelegate(){
        mainView.delegate = self
    }
}

