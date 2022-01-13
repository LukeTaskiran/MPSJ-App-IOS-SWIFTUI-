//
//  Sports.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-03.
//

import SwiftUI

struct Sports : View {
    
   var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack{
            Text("Sports & Start-End Dates")
                .font(Font.custom("Arial", size: 25.0))
                .bold()
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 0) {
                ForEach((1...39), id: \.self) {index in
                    Image("\(index)")
                        .frame(width: 120, height: 120)
                        .cornerRadius(10)
                        .scaledToFit()
                        .scaleEffect(0.85)
                        
                        
                }
            }
        }
    }
}
        }


struct Sports_Previews: PreviewProvider {
    static var previews: some View {
        Sports()
    }
}

