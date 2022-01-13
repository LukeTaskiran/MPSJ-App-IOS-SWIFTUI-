//
//  Michael_Power_St_JosephApp.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2021-12-30.
//

import SwiftUI
import GoogleMobileAds
@main
struct Michael_Power_St_JosephApp: App {
    
    init(){
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
        var body: some Scene {
            WindowGroup {
            
                    ContentView()
                        
                
            }
        }
    }
class AppState: ObservableObject {
    

    
}
