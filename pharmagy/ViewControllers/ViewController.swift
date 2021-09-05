//
//  ViewController.swift
//  pharmagy
//  Created by Saurav Sharma on 04/09/21.
//

import UIKit

class ViewController: UITabBarController {
    
    @IBOutlet weak var uiTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 1
    }
    
}

