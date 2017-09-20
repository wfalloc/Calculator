//
//  ViewController.swift
//  Calculator
//
//  Created by klwx on 2017/9/20.
//  Copyright © 2017年 wufan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pidding: CGFloat = 1.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
    }
    
    func setupUI() {
        for index in 0...19 {
            let row = index % 4
            let section = index / 4
            
            let width = (UIScreen.main.bounds.width - (5 * pidding)) / 4
            let height: CGFloat = 50.0
            
            let btn = UIButton(frame: CGRect(x: CGFloat(row) * (width + pidding) + pidding, y: CGFloat(section) * (height + pidding) + pidding, width: width, height: height))
            btn.setTitle("\(index)", for: .normal)
            btn.backgroundColor = UIColor.lightGray
            view.addSubview(btn)
        }
    }

}

