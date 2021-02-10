//
//  ArticleViewController.swift
//  UITabBarControllerDemo
//
//  Created by Trista on 2021/2/10.
//

import UIKit

//選擇iOS > Source > Cocoa Touch Class這個模版的檔案，繼承自UIViewController的子類別，新增ArticleViewController
class ArticleViewController: UIViewController {

    // 取得螢幕的尺寸
    let fullSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //建立一個 UILabel
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        myLabel.backgroundColor = UIColor.lightGray
        myLabel.text = "自定義圖示-文章頁"
        myLabel.textAlignment = .center   
        myLabel.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
                
        self.view.addSubview(myLabel)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
