//
//  LoginViewController.swift
//  pharmagy
//
//  Created by Saurav Sharma on 05/09/21.
//

import Foundation
import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()   
    }
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        
        if let email = emailInput.text, let password = passwordInput.text {
            Auth.auth().signIn(withEmail: email, password: password) { authresult, error in
                if let Err = error {
                    let alert = UIAlertController(title: "Error", message: "\(Err.localizedDescription)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    DispatchQueue.main.async {
                        self.present(alert, animated: true, completion: nil)
                    }
                    print("Error:- \(Err)")
                }else{
                    self.performSegue(withIdentifier: "showTabBar", sender: self)
                }
            }
            
        }
        
    }
    
}
