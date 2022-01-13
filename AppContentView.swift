//
//  AppContentView.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2021-12-31.
//
import SwiftUI
struct AppContentView: View {
    
    @State var signInSuccess = false
    
    var body: some View {
        return Group {
            if signInSuccess {
                HomePage()
            }
            else {
                ContentView(signInSuccess: $signInSuccess)
            }
        }
    }
}

