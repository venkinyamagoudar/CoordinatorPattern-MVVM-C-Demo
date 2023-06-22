//
//  SecondCoordniator.swift
//  Coordinator
//
//  Created by Venkatesh Nyamagoudar on 5/23/23.
//

import UIKit

class SecondCoordinator: MainCoordinator {
    var childCoordinator: [MainCoordinator] = []
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SecondViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
