//
//  SignUpCompleteViewController.swift
//  Stone
//
//  Created by Thomas Martins on 02/06/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit
import Firebase

class SignUpCompleteViewController: UIViewController, NavigationInternProtocol {

    @IBOutlet private weak var userPassword: AuthenticationTextfield!
    @IBOutlet private weak var userConfirmpassword: AuthenticationTextfield!
    @IBOutlet private weak var labelError: UILabel!
    
    private var inputData: Input?
    
    public struct Input {
        let email: String
        let firstname: String
        let familyname: String
    }
    
    struct Output { }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    private func setupView() {
        self.userPassword.becomeFirstResponder()
    }
    
    public func transferDataToController(input: SignUpCompleteViewController.Input) {
        self.inputData = input
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func completeSignUp(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Dashboard", bundle: nil)
        if let nextController = storyboard.instantiateViewController(withIdentifier: "DashboardStoryboard") as? DashboardViewController {
            
            guard let firstPassword = self.userPassword.text, !firstPassword.isEmpty,
                let secondPassword = self.userConfirmpassword.text, !secondPassword.isEmpty else {
                    self.labelError.text = "Error one of the field is empty"
                    return
            }
            if firstPassword != secondPassword {
                self.labelError.text = "Passwords are not matching"
                return
            }
            self.labelError.text = ""
            Auth.auth().createUser(withEmail: (self.inputData?.email)!, password: firstPassword) { (result, error) in
                if error != nil {
                    print(error)
                }
                print(result)
            }

        }
        
    }
    
}
