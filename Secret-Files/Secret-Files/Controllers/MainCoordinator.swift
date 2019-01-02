//
//  MainCoordinator.swift
//  Secret-Files
//
//  Created by Pavel Palancica on 1/2/19.
//  Copyright © 2019 I Dev TV. All rights reserved.
//

import UIKit

class MainCoordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
    }
    
    func start() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        homeVC.coordinator = self
        navigationController.pushViewController(homeVC, animated: true)
    }
    
    func goToFiles() {
        let filesVC = FilesViewController()
        navigationController.pushViewController(filesVC, animated: true)
        
        filesVC.coordinator = self
    }
}
