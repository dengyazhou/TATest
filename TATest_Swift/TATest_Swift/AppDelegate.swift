//
//  AppDelegate.swift
//  TATest_Swift
//
//  Created by xmly on 2022/6/13.
//

import UIKit

import ThinkingSDK

let APP_ID = "af6861d085e14b5c948662e1fcdce6ef"
let SERVER_URL = "https://receiver-ta-demo.thinkingdata.cn"


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var trackAppid: String?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        ThinkingAnalyticsSDK.setLogLevel(.debug)
        
//        trackAppid = "af6861d085e14b5c948662e1fcdce6ef"
        
        let config: TDConfig = .init(appId: APP_ID, serverUrl: SERVER_URL)
//        config.autoTrackEventType = .eventTypeAll
//        config.launchOptions = launchOptions ?? [:]
//        config.trackRelaunchedInBackgroundEvents = true
//        let config = TDConfig()
//        config.debugMode = .on
        
//        let instance = ThinkingAnalyticsSDK.start(withAppId: "", withUrl: SERVER_URL)
        let instance = ThinkingAnalyticsSDK.start(with: config)
        ThinkingAnalyticsSDK.sharedInstance(withAppid: trackAppid ?? "").enableAutoTrack(.eventTypeAll)
//        instance.enableAutoTrack(ThinkingAnalyticsAutoTrackEventType.eventTypeAll)
        
//        instance.track("eventV2")
        var dic = ["name":"邓亚洲", "#AbType":"aa"]
        instance.track("eventV4", properties: dic)
        
        
        
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

extension AppDelegate {
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
}

