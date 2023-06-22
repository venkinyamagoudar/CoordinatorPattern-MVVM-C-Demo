//
//  ViewController.swift
//  Coordinator
//
//  Created by Venkatesh Nyamagoudar on 5/23/23.
//

import UIKit


protocol FirstViewControllerDelegate {
    func moveToSecondView()
}

class FirstViewController: UIViewController {

    var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
            print("Moving to second view controller")
            self.delegate?.moveToSecondView()
        }
    }
}

