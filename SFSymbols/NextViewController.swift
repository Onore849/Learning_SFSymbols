//
//  NextViewController.swift
//  SFSymbols
//
//  Created by 野澤拓己 on 2020/08/21.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for x in 0..<3{

            let imageView = UIImageView(frame: CGRect(x: (view.frame.size.width - 150)/2,
                                                      y: 100 + (170 * CGFloat(x)),
                                                      width: 150,
                                                      height: 150))
            
            imageView.contentMode = .scaleAspectFit
            
            let config: UIImage.SymbolConfiguration
            if x == 0 {
                
                config = UIImage.SymbolConfiguration(weight: .ultraLight)
                
            }
            else if x == 1 {
                
                config = UIImage.SymbolConfiguration(weight: .regular)
                
            }
            else {
                
                config = UIImage.SymbolConfiguration(weight: .bold)
                
            }
            
            imageView.image = UIImage(systemName: "phone", withConfiguration: config)
            
            // change Colors in random
            imageView.tintColor = [UIColor.systemRed, UIColor.systemBlue, UIColor.systemYellow, UIColor.systemGray].randomElement()
            
            view.addSubview(imageView)
            
            
            
            
        }
        
    }
    

}
