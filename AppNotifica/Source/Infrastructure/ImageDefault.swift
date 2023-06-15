//
//  ImageDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 12/06/23.
//

import Foundation
import UIKit

class ImageDefault: UIImageView {
    
    init (image: String) {
        super.init(frame: .zero)
        initImageDefault(image: image)
    }
    
    private func initImageDefault ( image: String ){
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}