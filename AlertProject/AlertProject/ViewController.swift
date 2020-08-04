//
//  ViewController.swift
//  AlertProject
//
//  Created by Ahmet Salih Çağlar on 4.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title:  titleInput,message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.cancel, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func signUpButton(_ sender: Any) {
        if self.usernameTextField.text == ""{
            makeAlert(titleInput: "Hata!", messageInput: "Kullanıcı adı giriniz!")
        }else if self.passwordTextField.text == ""{
            makeAlert(titleInput: "Hata!", messageInput: "Şifre giriniz!")
        }else if self.password2TextField.text == ""{
            makeAlert(titleInput: "Hata!", messageInput: "Şifrenizi tekrar giriniz!")
        }else if self.passwordTextField.text != password2TextField.text{
            makeAlert(titleInput: "Hata!", messageInput: "Şifreler eşleşmiyor!")
        }else{
            makeAlert(titleInput: "Başarılı!", messageInput: "Sisteme başarıyla kaydoldunuz!")
        }
    }
    
        
}
