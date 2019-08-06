//
//  SignInViewController.swift
//  Stone
//
//  Created by Thomas Martins on 31/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {

    @IBOutlet private weak var userEmail: AuthenticationTextfield!
    @IBOutlet private weak var userPassword: AuthenticationTextfield!
    @IBOutlet private weak var labelError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
        super.viewWillDisappear(animated)
    }
    
    private func setupView() {
        self.userEmail.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func SignIn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Dashboard", bundle: nil)
        if let nextController = storyboard.instantiateViewController(withIdentifier: "DashboardStoryboard") as? DashboardViewController {
            
            guard let user = self.userEmail.text, !user.isEmpty,
                let password = self.userPassword.text, !password.isEmpty else {
                    self.labelError.text = "Error one of the field is empty"
                    return
            }
            self.labelError.text = ""
            Auth.auth().signIn(withEmail: user, password: password) { (result, error) in
                print(error)
                print(result)
                
                //self.present(nextController, animated: true)
            }
            
        }
        
    }
}
