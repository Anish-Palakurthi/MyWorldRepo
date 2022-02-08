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
}



