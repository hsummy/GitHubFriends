//
//  AppDelegate.swift
//  GitHubFriends
//
//  Created by HSummy on 12/7/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate
    
{
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let friendListViewController = GitHubFriendsTableViewController()
        let navController = UINavigationController(rootViewController: friendListViewController)
        
        window?.rootViewController = navController

        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication)
    {

    }

    func applicationDidEnterBackground(_ application: UIApplication)
    {

    }

    func applicationWillEnterForeground(_ application: UIApplication)
    {

    }

    func applicationDidBecomeActive(_ application: UIApplication)
    {

    }

    func applicationWillTerminate(_ application: UIApplication)
    {

    }


} //end of class AppDelegate

