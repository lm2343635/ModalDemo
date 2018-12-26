//
//  AppDelegate.swift
//  ModalDemo
//
//  Created by mon.ri on 2018/12/18.
//  Copyright © 2018 MuShare. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static let shared = UIApplication.shared.delegate as! AppDelegate
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }

}

