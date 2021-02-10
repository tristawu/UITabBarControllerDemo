//
//  SceneDelegate.swift
//  UITabBarControllerDemo
//
//  Created by Trista on 2021/2/10.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        //guard let _ = (scene as? UIWindowScene) else { return }
        if let windowScene = (scene as? UIWindowScene) {
            //建立一個 UIWindow ，用來顯示應用程式所有畫面的視窗
            //iOS下只會有一個視窗，就是self.window
            self.window = UIWindow(windowScene: windowScene)
                               
            //設置底色
            self.window!.backgroundColor = UIColor.white
            
            //設置rootViewController，也就是應用程式啟動後進到的第一個View
            //UINavigationController只是一個容器，也需要設置一個rootViewController，所以設置成已經存在的ViewController，也可以依照需求設置成自己另外建立的 UIViewController
            //建立 UITabBarController
            let myTabBar = UITabBarController()

            //設置標籤列
            //使用 UITabBarController 的屬性 tabBar 的各個屬性設置
            myTabBar.tabBar.backgroundColor = UIColor.clear
            
            //建立頁面:使用系統圖示
            let mainViewController = ViewController()
            mainViewController.tabBarItem =
                UITabBarItem(tabBarSystemItem: .favorites, tag: 100)
            
            //建立頁面:使用自定義圖示-有預設圖片及按下時圖片
            let articleViewController = ArticleViewController()
            articleViewController.tabBarItem = UITabBarItem(
                title: "文章",
                image: UIImage(named: "article"),
                selectedImage: UIImage(named: "articleSelected"))
            
            //建立頁面:使用自定義圖示-只有預設圖片
            let introViewController = IntroViewController()
            introViewController.tabBarItem = UITabBarItem(
                title: "介紹",
                image: UIImage(named: "profile"),
                tag: 300)
            
            //建立頁面:使用自定義圖示,可使用 tabBarItem 的屬性各自設定
            let settingViewController = SettingViewController()
            settingViewController.tabBarItem = UITabBarItem(
                title: "設定",
                image: UIImage(named: "setting"),
                tag:400)

            //加入到 UITabBarController
            myTabBar.viewControllers = [mainViewController , articleViewController,introViewController, settingViewController]
            
            //預設開啟的頁面(從 0 開始算起)
            myTabBar.selectedIndex = 2
 
            //將self.window的rootViewController設為UITabBarController
            self.window!.rootViewController = myTabBar
        
            //將 UIWindow 以makeKeyAndVisible()方法設置為可見的，完成手動建立頁面
            self.window!.makeKeyAndVisible()
            
        }
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

