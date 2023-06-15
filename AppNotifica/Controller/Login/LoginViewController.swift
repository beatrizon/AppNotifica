//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 05/06/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    
    //MARK: - Clousures
    var  onRegisterTap: (()-> Void)?
     lazy var loginView: LoginView = {
      let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()

    
    override func loadView() {
        self.view = loginView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        

    }
    
}
