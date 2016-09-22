//
//  FLTranlucentRootViewController.swift
//  FLTranslucentNavigationBar_swift
//
//  Created by clarence on 16/9/2.
//  Copyright © 2016年 clarence. All rights reserved.
//

import UIKit

class FLTranlucentRootViewController: UIViewController {

    var fl_navBarColor : UIColor = UIColor.clearColor(){
        didSet {
            navBar.backgroundColor = fl_navBarColor
            navBar.alpha = 1.0
            view.bringSubviewToFront(navBar)
        }
    }
    
    private lazy var navBar : UIView = {
        let view = UIView()
        view.frame = CGRect.init(x: 0.0, y: 0.0, width: self.view.size.width, height: 64)
        view.alpha = 0.0
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(createImageWithColor(UIColor.clearColor()), forBarMetrics: .Default)
    
        view.addSubview(navBar)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    func createImageWithColor(color : UIColor) -> UIImage {
        let rect = CGRect.init(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
