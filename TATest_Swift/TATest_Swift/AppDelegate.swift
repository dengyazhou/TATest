//
//  AppDelegate.swift
//  TATest_Swift
//
//  Created by xmly on 2022/6/13.
//

import UIKit

import ThinkingSDK

let APP_ID = "a5bf4fc2f8a248a7a02b9a62a58bf1e9"
let SERVER_URL = "http://ta_test.receiver.thinkingdata.cn"


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let config = TDConfig()
        config.debugMode = .on
        
        let instance = ThinkingAnalyticsSDK.start(withAppId: APP_ID, withUrl: SERVER_URL)
//        instance.enableAutoTrack(ThinkingAnalyticsAutoTrackEventType.eventTypeAll)
        
        instance.track("eventV1")
        
        
        
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

