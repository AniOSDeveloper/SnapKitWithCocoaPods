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
        
        box.backgroundColor = UIColor.redColor()
        self.view.addSubview(box)
        
        UIView.animateWithDuration(4, animations: { () -> Void in
                self.box.backgroundColor = UIColor.greenColor()
                self.box.snp_makeConstraints { (make) -> Void in
                    make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
                }
            }) { (finished) -> Void in
                if finished{
                    self.box.snp_removeConstraints()
                    self.box.snp_makeConstraints(closure: { (make) -> Void in
                        make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 80, left: 80, bottom: 80, right: 80))
                        self.box.backgroundColor = UIColor.blueColor()
                    })
                }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

