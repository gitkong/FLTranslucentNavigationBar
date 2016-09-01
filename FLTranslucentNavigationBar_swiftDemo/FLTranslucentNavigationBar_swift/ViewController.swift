//
//  ViewController.swift
//  FLTranslucentNavigationBar_swift
//
//  Created by clarence on 16/9/2.
//  Copyright © 2016年 clarence. All rights reserved.
//

import UIKit

class ViewController: FLTranlucentRootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "小咧咧"
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


}

