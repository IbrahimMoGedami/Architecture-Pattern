//
//  AppDelegate.swift
//  usersMVVMDemo
//
//  Created by Ibrahim Mo Gedami on 28/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    class AppDelegate: UIResponder, UIApplicationDelegate {
        
        var window:UIWindow?
        var storyBoard :UIStoryboard?
        var navigationController : UINavigationController?
        var rootVC = ViewController()
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            if window == nil {
                window = UIWindow(frame: UIScreen.main.bounds)
            }
            if navigationController == nil {
                navigationController = UINavigationController()
            }
            if storyBoard == nil {
                storyBoard = UIStoryboard(name: "Main", bundle:nil)
            }
            navigationController?.setNavigationBarHidden(true, animated: true)
            // storyboard with identifer
            rootVC = storyBoard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let nav = UINavigationController(rootViewController: rootVC)
            window?.rootViewController = nav
            window?.makeKeyAndVisible()
            return true
        }
        
    }
}

