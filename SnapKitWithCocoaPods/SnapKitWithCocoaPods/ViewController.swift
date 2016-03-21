//
//  ViewController.swift
//  SnapKitWithCocoaPods
//
//  Created by Larry on 16/3/21.
//  Copyright © 2016年 Larry. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var box = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        box.backgroundColor = UIColor.redColor()
        self.view.addSubview(box)
        
        box.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

