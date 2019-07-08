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
        
        print("showing slides count \(slides.count)")
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    
    }
    
    private func createSlides() {
        
        authenticationPresenter.createNewSlide(imageName: "decide", title: "Select your favorite dishes and Order", designation: "Select and order your favorite dishes from your favorite restaurants at your home")
        
        authenticationPresenter.createNewSlide(imageName: "decide", title: "Select your favorite dishes and Order", designation: "Select and order your favorite dishes from your favorite restaurants at your home")
        
        authenticationPresenter.createNewSlide(imageName: "decide", title: "Select your favorite dishes and Order", designation: "Select and order your favorite dishes from your favorite restaurants at your home")
        
        setScrollViewOnSlides()
    }
    
    private func updateCurrentView() {
        if pageControl.currentPage == 0 {
            
            UIView.animate(withDuration: 0.3) {
                self.signUpButton.alpha = 1
            }

        } else {
            UIView.animate(withDuration: 0.3) {
                self.signUpButton.alpha = 0
            }
        }
    }
}

extension AuthenticationViewController : UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        
        updateCurrentView()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        //setScrollViewOnSlides()
    }
    
}
