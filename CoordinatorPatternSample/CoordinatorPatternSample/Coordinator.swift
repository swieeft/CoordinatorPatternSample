//
//  Coordinator.swift
//  CoordinatorPatternSample
//
//  Created by Park GilNam on 2020/12/11.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var nav: UINavigationController { get set }
    
    func start()
}

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var nav: UINavigationController
    
    init(nav: UINavigationController) {
        self.nav = nav
    }
    
    func start() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        nav.pushViewController(vc, animated: true)
    }
    
    func showSecondVC() {
        let vc = SecondViewController.instantiate()
        vc.coordinator = self
        nav.pushViewController(vc, animated: true)
    }
}
