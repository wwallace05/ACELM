//
//  ACELMApp.swift
//  ACELM
//
//  Created by Will Wallace on 10/25/22.
//

import SwiftUI
import FirebaseCore
import FirebaseDatabase
import FirebaseDatabaseSwift


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

    FirebaseApp.configure()
    return true
  }

}
@main
struct ACELM: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//// when integrating, each outlet should ask the server what its status is and use that
//struct Outlet{
//    var name: String
//    var status: Bool
//    
//    mutating func toggleStatus(){
//        // send server command to toggle an outlet, once we recieve confirmation, then toggle
//        status = !status
//    }
//    
//    func displayStatus() -> String{
//        if status{
//            return "ON"
//        }
//        return "OFF"
//    }
//}

