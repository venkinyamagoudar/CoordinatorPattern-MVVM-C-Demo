//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Venkatesh Nyamagoudar on 5/23/23.
//

import UIKit

protocol MainCoordinator {
    
    var childCoordinator: [MainCoordinator] {
        get set
    }
    
    init(navigationController: UINavigationController)
    func start()
}
