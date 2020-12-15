//
//  MainViewController.swift
//  CoordinatorPatternSample
//
//  Created by Park GilNam on 2020/12/11.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextAction(_ sender: Any) {
        coordinator?.showSecondVC()
    }
}
