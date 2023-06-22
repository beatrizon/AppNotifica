//
//  NovaOcorrenciaCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 22/06/23.
//

import Foundation
import UIKit

class NovaOcorrenciaCoordinator: Coodinator {
    
    private let navigationController: UINavigationController
    
    lazy var novaOcorrenciaViewController: NovaOcorrenciaViewController = {
        let viewController = NovaOcorrenciaViewController()
        viewController.tabBarItem.title = "Novo"
        viewController.tabBarItem.image = UIImage(systemName: "note.text.badge.plus")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
