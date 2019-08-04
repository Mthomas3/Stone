//
//  AuthenticationPresenter.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import Foundation
import UIKit

final class AuthenticationPresenter {
    
    private var slides: [AuthenticationInformation] = []
    
    public func getSlidesLength() -> Int {
        return slides.count
    }
    
    public func createNewSlide(imageName: String, title: String, designation: String)  {
        
        let slide: AuthenticationInformation = Bundle.main.loadNibNamed("AuthenticationInformation", owner: nil, options: nil)?.first as! AuthenticationInformation
        
        slide.imageView.image = UIImage(named: imageName)
        slide.titleView.text = title
        slide.designationView.text = designation
        
        slides.append(slide)
    }
    
    public func getSlides() -> [AuthenticationInformation] {
        return slides
    }
    
}
