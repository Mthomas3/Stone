//
//  ProtocolManager.swift
//  Stone
//
//  Created by Thomas Martins on 05/08/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

protocol NavigationInternProtocol {
    
    associatedtype Input
    associatedtype Output
    
    func transferDataToController(input : Input)
}

