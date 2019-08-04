//
//  UserProtocol.swift
//  Stone
//
//  Created by Thomas Martins on 27/07/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import Foundation

internal protocol UserProtocol {
    
    var firstName: String { get }
    var familyName: String { get }
    var email: String { get }
    var age: Int { get }
    var password: String { get }
    
}
