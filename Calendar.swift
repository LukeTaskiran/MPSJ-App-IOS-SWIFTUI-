//
//  Calendar.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-03.
//

import SwiftUI

struct Calendar: View {
    @State var isPlaying : Bool = false
    @State private var selectedIndex: Int = 0
    var body: some View {
        VStack{
            
                      
        CustomPickerView(selectedIndex: $selectedIndex)
                   
    }
}
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
var Categories: [Category] = []
var lastIndex: Int = 0

struct Category: Hashable {
    let id: Int
    var title: String
    var selected: Bool
    
    init (id: Int, title: String, selected: Bool) {
        self.id = id
        self.title = title
        self.selected = selected
    }
}

struct CustomPickerView: View {
    
    @Binding var selectedIndex: Int
    @State private var currentIndex: Int = 0
    @Namespace private var ns
    
    
    init(selectedIndex: Binding<Int>) {
        _selectedIndex = selectedIndex
        Categories.removeAll()
        Categories.append(Category(id: 0, title: "September", selected: true))
        Categories.append(Category(id: 1, title: "October", selected: false))
        Categories.append(Category(id: 2, title: "November", selected: false))
        Categories.append(Category(id: 3, title: "Decemeber", selected: false))
        Categories.append(Category(id: 4, title: "January", selected: false))
        Categories.append(Category(id: 5, title: "Febuary", selected: false))
        Categories.append(Category(id: 6, title: "March", selected: false))
        Categories.append(Category(id: 7, title: "April", selected: false))
        Categories.append(Category(id: 8, title: "May", selected: false))
        Categories.append(Category(id: 9, title: "June", selected: false))
        
    }
    var body: some View {
        
        VStack(spacing: 10) {
            Spacer()
            Text("Calendar View is showing 2019-2020 schedule. An once normal schedule\n (Please scroll on each month for schedule) ")
                .font(Font.custom("Arial", size: 23.0))
                .bold()
                .foregroundColor(Color.white)
                .padding()
                .background(Color.red)
                .cornerRadius(20)
                .scaleEffect(1.10)
            
            Spacer()
            
            Image("month\(selectedIndex+1)")
                      .resizable()
                      .scaledToFill()
                      .scaleEffect(1.1)
                      .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/3)
                      
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                
                ScrollViewReader { scrollView in
                    
                    HStack(spacing: 35) {
                        
                        ForEach(Categories, id: \.self) { item in
                            if item.id == currentIndex {
                                ZStack() {
                                    Text(item.title)
                                        .bold()
                                        .layoutPriority(1)
                                    VStack() {
                                        Rectangle().frame(height: 2)
                                            .padding(.top, 20)
                                    }
                                    .matchedGeometryEffect(id: "animation", in: ns)
                                }
                            } else {
                                Text(item.title)
                                    .onTapGesture {
                                        withAnimation {
                                            
                                            currentIndex = item.id
                                            selectedIndex = currentIndex
                                            scrollView.scrollTo(item)
                                        }
                                    }
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 20)
                   
                }.padding()
            }
        }.multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
    
}
