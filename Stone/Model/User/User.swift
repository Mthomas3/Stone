//
//  User.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import Foundation

final class User {
    
    let firstName: String
    let familyName: String
    let email: String
    let age: Int
    let password: String
    
    init(firstname: String, familyname: String, age: Int, email: String, password: String) {
        
        self.firstName = firstname
        self.familyName = familyname
        self.age = age
        self.email = email
        self.password = password
    }
    
}
