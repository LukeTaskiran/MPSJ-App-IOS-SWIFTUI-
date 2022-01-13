//
//  MapView.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-01.
//

import SwiftUI

struct MapView: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 35) {
                
                   NavigationLink(destination: MainFloor()) {
                      Text("Main Floor")
                           .foregroundColor(.white)
                           .font(.system(size:55))
                           .padding(.horizontal, 20)
                            .padding(.vertical)
                            .background(
                                    LinearGradient(gradient: Gradient(colors: [.red, .indigo]), startPoint: .top, endPoint: .bottom)
                                )
                            .cornerRadius(20)
                                                   
                   }
                   
                Spacer()
                    NavigationLink(destination: SecondFloor()) {
                       Text("Second Floor")
                            .foregroundColor(.white)
                            .font(.system(size:44))
                            .padding(.horizontal, 20)
                             .padding(.vertical)
                             .background(
                                     LinearGradient(gradient: Gradient(colors: [.red, .indigo]), startPoint: .top, endPoint: .bottom)
                                 )
                             .cornerRadius(20)
                    }
                    
                Spacer()
                    NavigationLink(destination: KICA()) {
                       Text("KICA Calculator")
                            .foregroundColor(.white)
                            .font(.system(size:40))
                            .padding(.horizontal, 20)
                             .padding(.vertical)
                             .background(
                                     LinearGradient(gradient: Gradient(colors: [.red, .indigo]), startPoint: .top, endPoint: .bottom)
                                 )
                             .cornerRadius(20)
                             
                    }
                    
                BannerAd().frame(width: .infinity, height: 100, alignment: .center)
            }.padding()
                .offset(y:-30)
                
        }.navigationBarHidden(true)
            .navigationBarTitle(Text("Back"))
            .navigationViewStyle(StackNavigationViewStyle())
       
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

