//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 22/06/23.
//

import Foundation
import UIKit

class TabBarCoordinator : Coodinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
    
        let tabbarController = TabbarController()
        let homeViewCoodinator = HomeCoodinator(navigationController: self.navigationController)
        
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
                
        tabbarController.setViewControllers([homeViewCoodinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController,sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabbarController, animated: true)
    }
}
