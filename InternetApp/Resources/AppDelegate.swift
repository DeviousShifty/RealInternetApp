//
//  AppDelegate.swift
//  InternetApp
//
//  Created by Mumford, Ethan on 12/12/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

@UIApplicationMain
public class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate
{

    var window: UIWindow?


    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let splitViewController = window!.rootViewController as! UISplitViewController
        _ = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        return true
    }
    public func applicationWillResignActive(_ application: UIApplication) -> Void
    {}
    public func applicationDidEnterBackground(_ application: UIApplication)-> Void
    {<#code#>}
    public func applicationWillEnterForeground(_ application: UIApplication)-> Void
    {<#code#>}
    
    public func applicationDidBecomeActive(_ application: UIApplication)-> Void
    {}
    public func applicationWillTerminate(_ application: UIApplication)-> Void
    {<#code#>}
    //MARK! - Split View
    public func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController)-> Bool
    {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController
            else
        {
            return false}
        guard let topAsDetailController = secondaryAsNavController as? UINavigationController
            else
        {
                return false}
        
    return false
    }

}





