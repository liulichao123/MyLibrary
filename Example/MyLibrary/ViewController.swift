//
//  ViewController.swift
//  MyLibrary
//
//  Created by liulichao on 09/25/2019.
//  Copyright (c) 2019 liulichao. All rights reserved.
//

import UIKit
import MyLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = TestImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(imageView)
    }

}

