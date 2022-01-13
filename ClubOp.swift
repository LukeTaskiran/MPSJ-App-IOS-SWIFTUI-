//
//  ClubOp.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-03.
//

import SwiftUI
import GoogleMobileAds
struct ClubOp: View {
    
    var body: some View {
        NavigationView {
            VStack {
                
                   NavigationLink(destination: Clubs()) {
                      Text("Go to Clubs")
                           .foregroundColor(.white)
                           .font(.system(size:55))
                           .padding(.horizontal, 20)
                            .padding(.vertical)
                           .background(
                                   LinearGradient(gradient: Gradient(colors: [.red, .indigo]), startPoint: .top, endPoint: .bottom)
                               )
                           .cornerRadius(20)
                           
                   }
                   .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/2)
                
                    NavigationLink(destination: Sports()) {
                       Text("Go to Sports")
                            .foregroundColor(.white)
                            .font(.system(size:50))
                            .padding(.horizontal, 20)
                             .padding(.vertical)
                             .background(
                                     LinearGradient(gradient: Gradient(colors: [.red, .indigo]), startPoint: .top, endPoint: .bottom)
                                 )
                             .cornerRadius(20)
                    }.frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/2)
                
                BannerAd()
            }
        }.navigationBarHidden(true)
            .navigationBarTitle(Text("Back"))
            
       
    }
}

struct ClubOp_Previews: PreviewProvider {
    static var previews: some View {
        ClubOp()
    }
}
struct BannerAd: UIViewRepresentable{
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    func makeUIView(context: Context) ->  GADBannerView{
        let adView = GADBannerView(adSize: GADAdSizeBanner)
        adView.adUnitID = "ca-app-pub-5472498112928020/1840484720"
        adView.rootViewController =  UIApplication.shared.getRootViewController()
        adView.delegate = context.coordinator
        adView.load(GADRequest())
        return adView
        
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, GADBannerViewDelegate{func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("bannerViewDidReceiveAd")
      }

      func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
        print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
      }

      func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
        print("bannerViewDidRecordImpression")
      }

      func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
        print("bannerViewWillPresentScreen")
      }

      func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
        print("bannerViewWillDIsmissScreen")
      }

      func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
        print("bannerViewDidDismissScreen")
      }}
}


extension UIApplication{
    func getRootViewController()->UIViewController{
        guard let screen = self.connectedScenes.first as? UIWindowScene else{
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else{
            return .init()
        }
        return root
    }
}
