//
//  ViewController.swift
//  Secret-Files
//
//  Created by Pavel Palancica on 1/2/19.
//  Copyright © 2019 I Dev TV. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goToFiles(_ sender: Any) {
        coordinator?.goToFiles()
    }
}
