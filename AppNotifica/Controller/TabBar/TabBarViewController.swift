//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 22/06/23.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGroundColor
        
    }
}
