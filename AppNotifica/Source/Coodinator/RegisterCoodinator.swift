//
//  RegisterCoodinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 13/06/23.
//


import Foundation

import UIKit
class RegisterCoodinator: Coodinator {
    
   
    var navigationController: UINavigationController
    
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = RegisterViewController()
            self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }

    }
    
   
    func  gotoLogin() {
        
        
        self.navigationController.popViewController(animated: true)
    }
}
