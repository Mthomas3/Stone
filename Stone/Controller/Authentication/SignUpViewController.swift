//
//  SignUpViewController.swift
//  Stone
//
//  Created by Thomas Martins on 31/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet private weak var userFirstname: AuthenticationTextfield!
    @IBOutlet private weak var userFamilyname: AuthenticationTextfield!
    @IBOutlet private weak var userEmail: AuthenticationTextfield!
    @IBOutlet private weak var nextButton: AuthenticationButton!
    @IBOutlet private weak var labelError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissToSignUpViewController(_ segue: UIStoryboardSegue) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
        super.viewWillDisappear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.userFirstname.becomeFirstResponder()
        super.viewWillAppear(animated)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func nextButtonAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Authentication", bundle: nil)
        if let nextController = storyboard.instantiateViewController(withIdentifier: "nextStepLogin") as? SignUpCompleteViewController {
            
            guard let firstName = userFirstname.text, !firstName.isEmpty,
                let familyName = userFamilyname.text, !familyName.isEmpty else {
                    
                self.labelError.text = "First name, family name incorrect."
                return
            }
            
            guard let email = userEmail.text, !email.isEmpty, email.isValidEmail() else {
                self.labelError.text = "Email incorrect"
                return
            }
            
            nextController.transferDataToController(input: SignUpCompleteViewController.Input(email: email, firstname: firstName, familyname: familyName))
            
            self.present(nextController, animated: true)
        }
        
    }
}






//        if let myConstraint = self.view.constraintWith(identifier: "topNextButton"){
//            myConstraint.constant = 8
//        }
