//
//  MyWorldApp.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 10/12/21.
//

import SwiftUI
import Firebase


@main
struct MyWorldApp: App {
    @UIApplicationDelegateAdaptor(Appdelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL(perform: {url in
                    
                    Auth.auth().canHandle(url)
                })
    
        }
    }
    
    var network = Network()
    var body: some Scene{
        WindowGroup{
            ContentView()
                .environmentObject(network)
        }
    }
}

class Appdelegate : NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
                     launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        
        FirebaseApp.configure()
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
}



    
