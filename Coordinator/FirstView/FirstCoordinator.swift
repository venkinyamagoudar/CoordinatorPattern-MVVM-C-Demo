//
//  FirstCoordinator.swift
//  Coordinator
//
//  Created by Venkatesh Nyamagoudar on 5/23/23.
//

import UIKit

class FirstCoordinator: MainCoordinator {

    var childCoordinator: [MainCoordinator] = []
    let navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = FirstViewController()
        vc.delegate = self
        navigationController.viewControllers = [vc]
    }
    
    func navigateToSecondViewController() {
        let secondCoordinator = SecondCoordinator(navigationController: self.navigationController)
        childCoordinator.append(secondCoordinator)
        secondCoordinator.start()
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {
    
    func moveToSecondView() {
        navigateToSecondViewController()
    }
}
