//
//  SignInViewController.swift
//  Stone
//
//  Created by Thomas Martins on 31/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet private weak var userEmail: AuthenticationTextfield!
    @IBOutlet private weak var userPassword: AuthenticationTextfield!
    
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
}
