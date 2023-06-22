//
//  LoginCoodinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 05/06/23.
//

import Foundation
import UIKit
class LoginCoodinator: Coodinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
 
     let viewController = LoginViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onRegisterTap = {
              self.gotoRegister()
          }
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }
    }
    
    //função que chama a registerView
    func  gotoRegister() {
        let coodinator = RegisterCoodinator(navigationController: navigationController)
        coodinator.start()
    }
        //função que chama a registerView
        func  gotoLogin() {
           let coodinator = TabBarCoordinator(navigationController: navigationController)
            coodinator.start()
        }
}
