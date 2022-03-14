//
//  ContadorPasosApp.swift
//  ContadorPasosWatch WatchKit Extension
//
//  Created by Carlos Sanchez on 08-03-22.
//

import SwiftUI
import FirebaseCrashlytics

@main
struct ContadorPasosApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                
               
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
