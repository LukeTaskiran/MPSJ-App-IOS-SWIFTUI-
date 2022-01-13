//
//  HomePage.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2021-12-30.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var appState: AppState
   
    var body: some View {
        TabView {
            CourseList()
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Courses")
            }.navigationViewStyle(StackNavigationViewStyle())
            
            NavigationView {
                MapView()
            }
            .tabItem {
                Image(systemName: "map")
                Text("Map")
            }
            .navigationViewStyle(StackNavigationViewStyle())
               ClubOp().offset(y:-30)
            .tabItem {
                Image(systemName: "person.3")
                Text("Clubs")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            NavigationView {
                Calendar().offset(y:-30)
            }
            .tabItem {
                Image(systemName: "calendar")
                Text("Calendar")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            NavigationView {
                About()
            }
            .tabItem {
                Image(systemName: "person.fill.questionmark")
                Text("About")
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
