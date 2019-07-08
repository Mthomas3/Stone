//
//  TestViewController.swift
//  Stone
//
//  Created by Thomas Martins on 30/06/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

final class Slider {
    
    private var slides: [Slide] = []
    
    public func addNewSlide(slide: Slide) {
        
        slides.append(slide)
    }
}

class TestViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    var slides:[Slide] = [];

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
        scrollView.delegate = self
    }
    
    func createSlides() -> [Slide] {
        
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageVie.image = UIImage(named: "decide")
        slide1.textView.text = "FIRST"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.imageVie.image = UIImage(named: "LoginIcon")
        slide2.textView.text = "SECOND"
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.imageVie.image = UIImage(named: "StoneVioletOval")
        slide3.textView.text = "THIRD"
        
        return [slide1, slide2, slide3]
    }
    
    
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setupSlideScrollView(slides: slides)
    }

}
