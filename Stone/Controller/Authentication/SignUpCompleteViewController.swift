//
//  SignUpCompleteViewController.swift
//  Stone
//
//  Created by Thomas Martins on 02/06/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class SignUpCompleteViewController: UIViewController {

    @IBOutlet private weak var userPassword: AuthenticationTextfield!
    @IBOutlet private weak var userConfirmpassword: AuthenticationTextfield!
    
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
