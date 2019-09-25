//
//  TestImageView.swift
//  MyLibraryFramework
//
//  Created by 刘立超 on 2019/9/25.
//  Copyright © 2019 刘立超. All rights reserved.
//

import UIKit

public class TestImageView: UIImageView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
//        test1()
        test2()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 方式1
    /// .podspec 中 s.resource = ['MyLibrary/Assets/Image.xcassets']这样指定资源, 资源会在framework下打包成Assets.car
    ///
    func test1() {
        let bundle = Bundle(for: self.classForCoder)// 会定位到当前framework目录下
        self.image = UIImage(named: "top_refresh00", in: bundle, compatibleWith: nil)!
    }
    
    /// 方式2
    /// .podspec 中 s.resource = ['MyLibrary/Assets/Image.xcassets']这样指定资源, 资源会在framework下打包xxx.bundle,里面是Assets.car
    func test2() {
        let frameworkBundle = Bundle(for: self.classForCoder)// 会定位到当前framework目录下
        let url = frameworkBundle.url(forResource: "MyLibrary", withExtension: "bundle")!
        let bundle = Bundle(url: url)// 进入到 MyLibrary.bundle下，才能访问里面的Assets.car
        self.image = UIImage(named: "top_refresh00", in: bundle, compatibleWith: nil)!
    }

    
}

