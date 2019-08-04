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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    @IBAction func dismissToSignUpViewController(_ segue: UIStoryboardSegue) {
    }
    
    private func setupView() {
        
//        if let myConstraint = self.view.constraintWith(identifier: "topNextButton"){
//            myConstraint.constant = 8
//        }
    }

}
