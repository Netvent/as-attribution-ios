//
//  AppDelegate.swift
//  SampleAppSwift
//
//  Created by Yigit Caliskan on 1.11.2019.
//  Copyright © 2019 App Samurai Inc. All rights reserved.
//

import UIKit
import ASAttributionSDK


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        ASAttribution.initialize(applicationId: "aHR0cHM6Ly9hcHBzLmFwcGxlLmNvbS91cy9hcHAvby1ibGFzdC1wdXp6bGUvaWQxNDYyNDQ1MzEyfjM3MjZ%2BZmx5LXlvdS1mb29scy1wZDE1NzEyOTM5MDQ%3D")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

