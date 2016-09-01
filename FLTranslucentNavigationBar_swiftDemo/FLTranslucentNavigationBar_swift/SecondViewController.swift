//
//  SecondViewController.swift
//  FLTranslucentNavigationBar_swift
//
//  Created by clarence on 16/9/2.
//  Copyright © 2016年 clarence. All rights reserved.
//

import UIKit

class SecondViewController: FLTranlucentRootViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        title = "hello"
        fl_navBarColor = UIColor.orangeColor()
    }
}
