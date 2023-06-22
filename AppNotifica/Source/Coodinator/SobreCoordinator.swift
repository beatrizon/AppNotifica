//
//  SobreCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 22/06/23.
//

import Foundation
import UIKit

class SobreCoordinator: Coodinator {
    
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
