//
//  SignUpCompleteViewController.swift
//  Stone
//
//  Created by Thomas Martins on 02/06/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class SignUpCompleteViewController: UIViewController, NavigationInternProtocol {

    @IBOutlet private weak var userPassword: AuthenticationTextfield!
    @IBOutlet private weak var userConfirmpassword: AuthenticationTextfield!
    
    private var inputData: Input?
    
    public struct Input {
        let email: String
        let firstname: String
        let familyname: String
    }
    
    struct Output { }
    
    @IBOutlet private weak var labelError: UILabel!
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
}
