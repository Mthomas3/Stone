//
//  View.swift
//  Stone
//
//  Created by Thomas Martins on 04/08/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

extension UIView{
    func constraintWith(identifier: String) -> NSLayoutConstraint?{
        return self.constraints.first(where: {$0.identifier == identifier})
    }
}
