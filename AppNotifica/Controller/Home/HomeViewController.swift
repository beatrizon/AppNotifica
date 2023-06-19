//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 15/06/2023
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    

    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        
        return homeView
    }()
    
    override func loadView(){
        self.view = homeView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
    
}

