//
//  ViewController.swift
//  APPtest
//
//  Created by iMac on 2018/10/30.
//  Copyright © 2018年 iMac. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var iv_images: UIImageView!
    @IBOutlet weak var pc_imagePage: UIPageControl!
    
    var images = [UIImage]()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSlideMenuButton()
        
        images.append(UIImage(named: "0.jpg")!)
        images.append(UIImage(named: "1.jpg")!)
        images.append(UIImage(named: "2.jpg")!)
        images.append(UIImage(named: "3.jpg")!)
        images.append(UIImage(named: "4.jpg")!)
        images.append(UIImage(named: "5.jpg")!)

        iv_images.image = images[0]
        pc_imagePage.numberOfPages = images.count
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func handSwipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
            
        case UISwipeGestureRecognizer.Direction.left:
            
            if pc_imagePage.currentPage < images.count - 1 {
                pc_imagePage.currentPage += 1 }
            
        case UISwipeGestureRecognizer.Direction.right: if pc_imagePage.currentPage > 0 {
            pc_imagePage.currentPage -= 1 }
            
        default: return
        }
        iv_images.image = images[pc_imagePage.currentPage]
    }
    
}

