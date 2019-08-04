//
//  AuthenticationInformation.swift
//  Stone
//
//  Created by Thomas Martins on 03/07/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

final class AuthenticationInformation: UIView {
    
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var title: UILabelTitle!
    @IBOutlet private weak var designation: AuthenticationTextView!
    
    var imageView: UIImageView {
        set {
            self.image = newValue
        }
        get {
            return self.image
        }
    }
    
    var titleView: UILabelTitle {
        set {
            self.title = newValue
        }
        get {
            return self.title
        }
    }
    
    var designationView: AuthenticationTextView {
        set {
            self.designation = newValue
        }
        get {
            return self.designation
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
