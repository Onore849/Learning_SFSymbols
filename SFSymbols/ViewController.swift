//
//  ViewController.swift
//  SFSymbols
//
//  Created by 野澤拓己 on 2020/08/21.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     // imageViewの設定
    private let imageView: UIImageView = {

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.contentMode = .scaleAspectFit

        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        
        // 真ん中に寄せる
        imageView.center = view.center

        
        // configで細かい設定ができる
        let config = UIImage.SymbolConfiguration(weight: .ultraLight)
        imageView.image = UIImage(systemName: "house", withConfiguration: config)
        
//        imageView.image = UIImage(systemName: "house")
        
        imageView.tintColor = .systemRed
    }
    
    
}
