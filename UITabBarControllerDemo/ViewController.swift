//
//  ViewController.swift
//  UITabBarControllerDemo
//
//  Created by Trista on 2021/2/10.
//

import UIKit

class ViewController: UIViewController {

    // 取得螢幕的尺寸
    let fullSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //建立一個 UILabel
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        myLabel.backgroundColor = UIColor.systemBlue
        myLabel.text = "系統圖示-favorites頁"
        myLabel.textAlignment = .center
        myLabel.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
                
        self.view.addSubview(myLabel)
        
    }


}

