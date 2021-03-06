//
//  ContentView.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2021-12-30.
//

import SwiftUI

struct ContentView: View {
    @State var tap = false
    @State var press = false
    @State var show = true
    @State private var animateGradient = false
    
    var body: some View {
        
        VStack(spacing: 30) {
            
                
                        
                Text("Welcome to MPSJ App \nHold This Button To Enter")
                    .font(Font.custom("Arial", size: 25.0))
                    .bold()
                    .foregroundColor(Color.white)
                    
              
                    PayButton()
            
        
        }.multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(colors: [.red, .gray], startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .topTrailing : .topLeading)
                            .ignoresSafeArea()
                            .onAppear {
                                withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: true)) {
                                    animateGradient.toggle()
                                }
                            }
)
            .edgesIgnoringSafeArea(.all)
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
        
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
               
        }
    }
}


struct PayButton: View {
    @EnvironmentObject var appState: AppState
    @GestureState var tap = false
    @State var press = false
    @State var hasTimeElapsed = false
    var body: some View {
        ZStack {
            
            Image(systemName: "play.circle.fill")
                .font(.system(size: 44, weight: .light))
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .opacity(press ? 1 : 1)
                .scaleEffect(press ? 0 : 1)
            
            
            Image(systemName: "play.circle.fill")
                .font(.system(size: 44, weight: .light))
                .clipShape(Rectangle().offset(y: tap ? 0 : 50))
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .animation(.easeInOut)
                .opacity(press ? 0 : 1)
                .scaleEffect(press ? 0 : 1)
            
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 44, weight: .light))
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .opacity(press ? 1 : 0)
                .scaleEffect(press ? 1 : 0)
                
            
            
        }
        .frame(width: 120, height: 120)
        .background(
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 3, x: -5, y: -5)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 3, x: 3, y: 3)
            }
            
        )
            .clipShape(Circle())
        .overlay(
            Circle()
                .trim(from: tap ? 0.001 : 1, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 88, height: 88)
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 5, x: 3, y: 3)
                .animation(.easeInOut)
            
        )
            .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 20, x: -20, y: -20)
            .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            .scaleEffect(tap ? 1.2 : 1)
            .gesture(
                LongPressGesture().updating($tap) { currentState, gestureState, transaction in
                    gestureState = currentState
                    
                    
                }
                .onEnded { value in
                    self.press.toggle()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        goHome()
                    }
                    
                    
                }
                
        )
        
        
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomePage())
            
            window.makeKeyAndVisible()
        }
    }
    
    }


