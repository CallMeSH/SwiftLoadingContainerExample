//
//  AppDelegate.swift
//  Loading Container Demo
//
//  Created by Charles-Henri Dumalin on 08/01/2019.
//  Copyright © 2019 Mobiten. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window

        appCoordinator = AppCoordinator(window)
        appCoordinator.start()
        
        window.makeKeyAndVisible()
        
        return true
    }
}

