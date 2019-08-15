//
//  ViewController.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {
    
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var signUpButton: AuthenticationButton!
    @IBOutlet private weak var labelOr: UILabel!
    

    private let authenticationPresenter = AuthenticationPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSlider()
    }
    
    private func initSlider() {
        
        createSlides()
        
        setScrollViewOnSlides()
        view.bringSubviewToFront(pageControl)
        
        initPageControl()
        
        scrollView.delegate = self
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
    }
    
    private func initPageControl() {
        pageControl.numberOfPages = authenticationPresenter.getSlidesLength()
    }
    
    private func setScrollViewOnSlides() {
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(authenticationPresenter.getSlidesLength()), height: view.frame.height)
    
        scrollView.isPagingEnabled = true
        
        let slides = authenticationPresenter.getSlides()
        
        for i in 0 ..< slides.count {
            
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    
    }
    
    private func createSlides() {
        
        authenticationPresenter.createNewSlide(imageName: "decide", title: "Take care of your loves one...", designation: "Stone is the best application to take care of your loved one that left too early")
        
        authenticationPresenter.createNewSlide(imageName: "LoginIcon", title: "Make you close to your loved ones", designation: "You can make sure that the grave of your loved ones are being taken care of correctly and in a proper way")
        
        authenticationPresenter.createNewSlide(imageName: "LoginStonePic", title: "Join our family, help the world ❤️", designation: "By joining the unique Stone family, you will make the world a better place to live on")
        
        setScrollViewOnSlides()
    }
    
    private func updateCurrentView() {
        if pageControl.currentPage == 0 {
            
            UIView.animate(withDuration: 0.5) {
                self.signUpButton.alpha = 1
                self.labelOr.alpha = 1
                
            }

        } else {
            UIView.animate(withDuration: 0.3) {
                self.signUpButton.alpha = 0
                self.labelOr.alpha = 0
            }
        }
    }
    
    
    @IBAction func dismissToMainPage(_ segue: UIStoryboardSegue) {
    }
}

extension AuthenticationViewController : UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        
        updateCurrentView()
    }
    
}
