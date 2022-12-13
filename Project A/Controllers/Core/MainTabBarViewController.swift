//
//  MainTabBarViewController.swift
//  Project A
//
//  Created by Jose Garcia on 12/13/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SavedViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        
        vc1.title = "Home"
        vc2.title = "Saved"
        
        setViewControllers([vc1, vc2], animated: true)
    }
}
