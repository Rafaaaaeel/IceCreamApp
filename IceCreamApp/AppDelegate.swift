//
//  AppDelegate.swift
//  IceCreamApp
//
//  Created by Rafael Oliveira on 26/04/22.
//

import UIKit

let appColor: UIColor = .systemBrown

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let tabBarList = UITabBarController()
    let mainViewController = MainViewController()
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
            
        setupTabBarView()
        
        window?.rootViewController = tabBarList
        
        return true
    }
    
    func setupTabBarView(){
        
        let dummy1 = DummyViewController1()
        let dummy2 = DummyViewController2()
        let dummy3 = DummyViewController3()
        let dummy4 = DummyViewController4()
        
        dummy1.setTabBarImage(imageName: "house", title: "")
        dummy2.setTabBarImage(imageName: "waveform.path.ecg", title: "")
        mainViewController.setTabBarImage(imageName: "square.grid.2x2", title: "")
        dummy3.setTabBarImage(imageName: "suit.heart", title: "")
        dummy4.setTabBarImage(imageName: "person.2", title: "")
        
        tabBarList.viewControllers = [dummy1, dummy2, mainViewController, dummy3, dummy4]
        tabBarList.selectedIndex = 2
    }
}

class DummyViewController1:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


class DummyViewController2:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class DummyViewController3:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class DummyViewController4:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
