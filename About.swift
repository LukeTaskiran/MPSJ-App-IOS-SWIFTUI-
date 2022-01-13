//
//  About.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-02.
//

import SwiftUI
import GoogleMobileAds
struct About: View {
    @State var interstitial: GADInterstitialAd?
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
        HStack{
            Image("LukePIC")
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .scaleEffect(1.2)
                .padding()
            
                
            AboutSide()
                .scaleEffect(1)
        }
        .offset(y: -30)
        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/3)
            VStack{
                Button(action: {
                   EmailHelper.shared.sendEmail(subject: "Issues/Question about MPSJ App", body: "If you have any issues or ideas, send me an email!!", to: "luke.taskiran@gmail.com")
                 }) {
                     VStack{
                     Text("Send Me an Email")
                         .font(Font.custom("Arial", size: 25.0))
                         .lineLimit(2)
                         .padding()
                     Image(systemName: "paperplane.circle.fill")
                             .scaleEffect(4)
                             .padding()
                            
                     }
                 }
                    .scaledToFill()
               
                
                Button(action: {
                    guard let number = URL(string: "tel://" + "4163935529") else { return }
                    UIApplication.shared.open(number)
                 }) {
                     VStack{
                     Text("Call MPSJ")
                         .font(Font.custom("Arial", size: 25.0))
                         .lineLimit(2)
                         .padding()
                     Image(systemName: "phone.fill.connection")
                             .scaleEffect(4)
                             .padding()
                            
                     }
                 }
                    .scaledToFill()
                
                BannerAd().frame(width: .infinity, height: 100, alignment: .center)
                                    
            }
            .offset(y:-30)
            .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/2)
        }.onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                // your code here
            let request = GADRequest()
                    GADInterstitialAd.load(withAdUnitID:"ca-app-pub-5472498112928020/4285333594",
                                                request: request,
                                      completionHandler: { [self] ad, error in
                                        if let error = error {
                                          return
                                        }
                             // Change these two lines of code
                            
                             // To...
                             interstitial = ad
                             let root = UIApplication.shared.windows.first?.rootViewController
              self.interstitial!.present(fromRootViewController: root!)
                                      }
                    )

            }})
        .frame(maxWidth: .infinity, maxHeight: .infinity)
      
        //.frame(width: UIScreen.main.bounds.height/2, height: UIScreen.main.bounds.height/2)
    }
    
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
struct AboutSide: View{
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button("myBlueprint"){
            openURL(URL(string: "https://app.myblueprint.ca/")!)
            
        }
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .frame(width: 200, height: 60)
            .background(
                ZStack {
                    Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -4, y: -4)
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                        .padding(2)
                        .blur(radius: 1)
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -4, y: -20)
            .padding()
            
            Button("MPSJ Website"){
                openURL(URL(string: "https://www.tcdsb.org/schools/michaelpowerstjoseph/Pages/default.aspx")!)
                
            }
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                        Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -4, y: -4)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                            .padding(2)
                            .blur(radius: 1)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -24, y: -20)
                .padding()
    }
    }
    
}
