//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFBIOTIC10 on 13/06/23.
//
import Foundation
import UIKit

class RegisterView: ViewDefault {
    
 
    
    //MARK: -Closures
    
    
    var onLoginTap: (() -> Void)?
  
    var imageLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar", font: UIFont.systemFont(ofSize: 17, weight: .regular))
     
    var emailTextField = TextFieldDefault (placeholder: "E-mail")
          
    var senhaTextField = TextFieldDefault (placeholder: "Senha")
    
    var confirmaSenhaTextField = TextFieldDefault (placeholder: "Confirmar Senha")
    
    var buttonRegistrar = ButtonDefault(botao: "Registrar")
    
    var buttonLogar = ButtonDefault(botao: "Logar")
    

    override func setupVisualElements() {
        super.setupVisualElements()
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmaSenhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
          
            //imagem label
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            // email text field
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 23),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            //campo senha
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 70),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            //confirmar senha
            confirmaSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmaSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmaSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmaSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmaSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            // botão de registrar
                       
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            // botão de logar
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }

   
    //MARK: -Action
    @objc
    private func loginTap(){
        onLoginTap?()
    }
    
}

