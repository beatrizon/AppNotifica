//
//  HomeCoodinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 15/06/23.
//

import Foundation

import UIKit
class HomeCoodinator: Coodinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        return viewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //inicializa  o homeviewcontrollher
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        
    }
    }
