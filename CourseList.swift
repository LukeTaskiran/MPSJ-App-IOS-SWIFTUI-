//
//  CourseList.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-01.
//

import SwiftUI

import GoogleMobileAds

struct CourseList: View {
    let cars = ["Dramatic Arts Grade 9 • ADA1O1 • Open", "Music Vocal Grade 9 • AMV1O1 • Open", "Instrumental Band Grade 9 • AMI1O2 • Open", "Music Strings Grade 9 • AMS1O2 • Open", "Experienced Band Grade 9 • AMI1O1 • Open", "Experienced Strings Grade 9 • AMS1O1 • Open", "Visual Arts Grade 9 • AVI1O1 • Open","Dramatic Arts Grade 10 • ADA2O1 • Open","Keyboard Music Grade 10 • AMK2O1 • Open","Music Vocal Grade 10 • AMV2O1 • Open"," Music Instrumental Grade 10 • AMI2O2 • Open","Music Strings Grade 10 • AMS2O2 • Open", "Music Experienced Strings Grade 10 • AMI2O1 • Open", "Music Experienced Strings Grade 10 • AMS2O1 • Open", "Gutair Grade 10 • AMG2O1 • Open", "Visual Arts Grade 10 • AVI2O1 • Open", "Drama:Scene Study Grade 11 • ADA3M1 • University/College", "Gutair Music Grade 11 • AMG3M1 • University/College", "Keyboard Music Grade 11 • AMK3M1 • University/College", "Music Vocal Grade 11 • AMV3M1 • University/College", " Music Instrumental Band Grade 11 • AMI3M1 • University/College", " Music Instrumental Strings Grade 11 • AMS3M1 • University/College", " Visual Arts Film Grade 11 • AWR3M1 • University/College", " Visual Arts Photography Grade 11 • AWQ3M1 • University/College", "Visual Arts Foundation Grade 11 • AVI3M1 • University/College", " Drama Grade 12 • ADA4M1 • University/College", " Gutair Music Grade 12 • AMG4M1 • University/College", "Keyboard Music Grade 12 • AMK4M1 • University/College", " Music Vocal Grade 12 • AMV4M1 • University/College", "Music Instrumental Band Grade 12 • AMI4M1 • University/College", "Music Instrumental Strings Grade 12 • AMS4M1 • University/College", "Visual Arts Grade 12 • AVI4M1 • University/College", "Visual Arts Film Grade 12 • AWR4M1 • University/College", "Music Vocal Pre-IB Grade 9 • AMV1OE • Open", "Visual Arts Pre-IB Grade 9 • AVI1OE • Open", " Music Vocal Pre-IB Grade 10 • AMV2OE • Open", " Visual Arts Pre-IB Grade 10 • AVI2OE • Open", " Music Band IB Grade 11 • AMI3M4 • University/College", " Visual Arts IB Grade 11 • AVI3M4 • University/College", " Instrumental Music Band IB Grade 12 • AMI4M4 • University/College", " Visual Arts IB Grade 12 • AVI4M4 • University/College", "Info and Communcation Techongly in Business Grade 9-10 • BTT2O1 • Open", "Computer Technology Grade 10 • TEJ2O1 • Open", "Intro to Business Grade 10 • BBI2O1 • Open", "Computer Technology Grade 11 • TEJ3E1 • Workplace", "Entrepreneurship Grade 11-12 • BDV4C1 • College", "Financial Accounting Fundamentals Grade 11 • BAF3M1 • University/College", " Info and Communication Technology Grade 11 • BTA3O1 • Open", "Intro to Accounting Grade 11 • BAI3E1 • Workplace", " Understanding Canadan Law Grade 11 • CLU3E1 • Workplace", "Accounting for a Small Business Grade 12 • BAN4E1 • Workplace", " Analysing Economic Issues Grade 12 • CIA4U1 • University", "Canadian and International Law Grade 12 • CLN4U1 • University", "Financial Accounting Principles Grade 12 • BAT4M1 • University/College", "Individual and the Economy IB Grade 11 • CIE3M4 • University/College", "Economic Issues IB Grade 12 • CIA4U4 • University", "Canadian Geography Grade 9 • CGC1D1 • Academic", "Canadian Geography Grade 9 • CGC1P1 • Applied", "Canadian History Since World War I Grade 10 • CHC2D1 • Academic", "Canadian History Since World War I Grade 10 • CHC2P1 • Applied", "American History Grade 11 • CHA3U1 • University", "Forces of Nature Grade 11 • CGF3M1 • University/College", "Topics in Post War Canada Grade 11 • CHE3O1 • Open", "Travel and Tourism Grade 11 • CGG3O1 • Open", "World History to End of Fifteenth Century Grade 11 • CHW3M1 • University/College", "Canda: History,Identity and Culture Grade 12 • CHI4U1 • University", "Canadian and World Politics Grade 12 • CPW4U1 • University", "Environment and Resource Management Grade 12 • CGR4E1 • Workplace", "Environment and Resource Management Grade 12 • CGR4M1 • University/College", "World Geography Grade 12 • CGU4M1 • University/College", "World History since Fifteenth Century Grade 12 • CHY4C1 • College", "World Hisotry since Fifteenth Century Grade 12 • CHY4U1 • University", " World Issues Grade 12 • CGW4U1 • University", "Canadian Geography Pre-IB Grade 9 • CGC1DE • Academic", "Canadian Hisotry Since World War I IB Grade 10 • CHC2DE • Academic", "Forces of Nature IB Grade 11 • CGF3M4 • University/College", "American History IBvGrade 11 • CHA3U4 • University", "American History IB Grade 11 • CHA3UC • University", "World Issues IB Grade 12 • CGW4U4 • University", "Canada: History,Identity, and Culture IB Grade 12 • CHI4UC • University", " World since Fifteenth Century IB Grade 12 • CHY4U4 • University", "World since Fifteenth Century IB Grade 12 • CHY4UC • University", "Italian Grade 10 • LWIBD1 • Academic", "Latin Grade 10 • LVLBD1 • Academic", "Italian Grade 11 • LWICU1 • University", "Latin Grade 11 • LVLCU1 • University", "Archaeology Grade 12 • IDC4U1 • University", "Classical Civilization Grade 12 • LVV4U1 • University", "Italian Grade 12 • LWIDU1 • University", "Latin Grade 12 • LVLDU1 • University", "Intro Computer Science Grade 11 • ICS3C1 • College", "Intro to Computer Science Grade 11 • ICS3U1 • University", "Computer Programming Grade 12 • ICS4U1 • University", "2 Credit CO-OP Grade 11-12 • COP4X2 • Open", "3 Credit CO-OP Grade 11-12 • COP4X3 • Open", "4 Credit CO-OP Grade 11-12 • COP4X4 • Open", "E-Learning Sem 2 Grade 11-12 • 2E-LRN • Open", " E-Learning Sem 1 Grade 11-12 • 1E-LRN • Open", "English Grade 9 • ENG1D1 • Academic", "English Grade 9 • ENG1L1 • Locally Developed", "English Grade 9 • ENG1P1 • Applied", "English Grade 10 • ENG2D1 • Academic", "English Grade 10 • ENG2L1 • Locally Developed", "English Grade 10 • ENG2P1 • Applied", " Literacy Skills Grade 10 • ELS2O1 • Open", "English Grade 11 • ENG3C1 • College", "English Grade 11 • ENG3E1 • Workplace", "English Grade 11 • ENG3U1 • University", "Media Studies Grade 11 • EMS3O1 • Open", "English Grade 12 • ENG4C1 • College", "English Grade 12 • ENG4E1 • Workplace", "English Grade 12 • ENG4U1 • University", "Ontario Secondary Literacy Grade 12 • OLC4O1 • Open", "Studies in Literature Grade 12 • ETS4U1 • University", "Writer's Craft Grade 12 • EWC4C1 • College", "English Pre-IB Grade 9 • ENG1DE • Academic", "English IB Grade 10 • ENG2DE • Academic", "English IB Grade 11 • ENG3UC • University", "English IB Grade 12 • ENG4UC • University", "Studies in Literature Grade 12 • ETS4UC • University", "Bridge to English Grade 9 • ESLEO1 • Open", "English as a Second Language, Lvl 1 Grade 9 • ESLAO1 • Open", "English as a Second Language, Lvl 2 Grade 9 • ESLBO1 • Open", "English as a Second Language, Lvl 3 Grade 9 • ESLCO1 • Open", "English as a Second Language, Lvl 4 Grade 9 • ESLDO1 • Open", "Enseigment Religieux Grade 9 • HRE1OF • Open", "Extended French Grade 9 • FEF1D1 • Academic", "Canadian Geography French Grade 9 • CGC1DF • Academic", "History World War I French Grade 10 • CHC2DF • Academic", "Career/Civics Ext.French Grade 10 • PGCF", "Enseignement Religieux Grade 10 • HRE2OF • Open", "Extended French Grade 10 • FEF2D1 • Academic", "Intro French Subject Grade 10 • BTT2OF • Open", "Extended French Grade 11 • FEF3U1 • University", "World Religons and Belief French Grade 11 • HRT3MF • University/College", "Extended French Grade 12 • FEF4U1 • University", "Core French Grade 9 • FSF1D1 • Academic", "Core French Grade 9 • FSF1P1 • Applied", "Core French Grade 10 • FSF2D1 • Academic", "Core French Grade 11 • FSF3U1 • University", "Core French Grade 12 • FSF4U1 • University", "Core French Pre-IB Grade 9 • FSF1DE • Academic", "Core French Pre-IB Grade 10 • FSF2DE • Academic", "Extended French IB Grade 11 • FEF3U4 • University", "Core French IB Grade 11 • FSF3U4 • University", "Core French IB Grade 12 • FSF4U4 • University", "Guidance Strategies 1 Grade 9 • GLE1O1 • Open", " Guidance Learning Strategies I Grade 9 • GLS1O1 • Open", "Discovering the Workplace Grade 10 • GLD2O1 • Open", "Guidance Strategies 1 Grade 10 • GLE2O1 • Open", "Leadership & Peer Support Grade 11 • GPP3O1 • Open", "Leadership & Peer Support Grade 11 • GPP3OS • Open", "Leadership Studies Grade 11 • GPP3OL • Open", "Guidance Strategies 1 Grade 11 • GLE3O1 • Open", "Guidance Strategies 1 Grade 12 • GLE4O1 • Open", "Guidance Learning Strategies I Grade 12 • GLS4O1 • Open", "Career/Civics Grade 10 • PGC", "Healthy Active Living Grade 9 • PPL1OU • Open", "Healthy Active Living Grade 9 • PPL1OV • Open", "Healthy Active Living Grade 10 • PPL2OU • Open", "Healthy Active Living Grade 10 • PPL2OV • Open", "Court Sports Grade 10 • PAL2OV • Open", "Territory Games Grade 10 • PAL2OU • Open", "Healthy Active Living Grade 11 • PPL3O1 • Open", "Healthy Living & Rhythm Grade 11 • PAR3OV • Open", "Personal & Fitness Grade 11 • PAF3OU • Open", "Personal & Fitness Grade 11 • PAF3OV • Open", "Healthy Active Living Grade 12 • PPL4O1 • OpenGrade 12 • PPL4O1 • Open", "Lifetime Sports Grade 12 • PAI4O1 • Open", "Intro Kinesiology Grade 12 • PSK4U1 • University", "Personal & Fitness Grade 12 • PAF4OV • Open", "Math Grade 9 • MFM1P1 • Applied", "Math Grade 9 • MAT1L1 • Locally Developed",  "Math Grade 9 • MPM1D1 • Academic", "Math Grade 10 • MFM2P1 • Applied", "Math Grade 10 • MAT2L1 • Locally Developed", "Math Grade 10 • MPM2D1 • Academic", "College Math Grade 11 • MBF3C1 • College", "Functions Grade 11 • MCR3U1 • University", "Functions and Applications Grade 11 • MCF3M1 • University/College", "Math in Everyday Life Grade 11 • MEL3E1 • Workplace", "Advanced Functions Grade 12 • MHF4U1 • University", "Calculus and Vectors Grade 12 • MCV4U1 • University", "College Math Grade 12 • MAP4C1 • College", "Math of Data Management Grade 12 • MDM4U1 • University", "College Math Technology Grade 12 • MCT4C1 • College", "Math in Everyday Life Grade 12 • MEL4E1 • Workplace", "Math Pre-IB Grade 9 • MPM1DE • Academic", "Functions Pre-IB Grade 10 • MCR3UE • University", "Math Pre-IB Grade 10 • MPM2DE • Academic", "Functions IB Grade 11 • MCR3U4 • University", "Data Management IB Grade 11 • MHF4U4 • University", "Calculus and Vectors IB Grade 12 • MCV4U4 • University", "Religon Grade 9 • HRE1O1 • Open", "Religon Grade 10 • HRE2O1 • Open", "World Religons and Belief Grade 11 • HRF3O1 • Open", "World Religons and Belief Grade 11 • HRT3M1 • University/College", "Philosophy IB Grade 12 • HZT4UC • University", "Religon Grade 12 • HRE4M1 • University/College", "Religon Grade 12 • HRE4O1 • Open", "Science Grade 9 • SNC1D1 • Academic", "Science Grade 9 • SNC1L1 • Locally Developed", "Science Grade 9 • SNC1P1 • Applied", "Science Grade 10 • SNC2D1 • Academic", "Science Grade 10 • SNC2L1 • Locally Developed", "Science Grade 10 • SNC2P1 • Applied", "Biology Grade 11 • SBI3C1 • College", "Biology Grade 11 • SBI3U1 • University", "Chemistry Grade 11 • SCH3U1 • University", "Chemistry Grade 11-12 • SCH4C1 • College", "Enivronmental Science Grade 11 • SVN3E1 • Workplace", "Physics Grade 11 • SPH3U1 • University", "Physics Grade 11-12 • SPH4C1 • College", "Biology Grade 12 • SBI4U1 • University", "Bio-Medical Science Grade 12 • SNC4M1 • University/College", "Chemistry Grade 12 • SCH4U1 • University", "Physics Grade 12 • SPH4U1 • University", "Science Grade 12 • SNC4E1 • Workplace", "Science Pre-IB Grade 9 • SNC1DE • Academic", "Science Pre-IB Grade 10 • SNC2DE • Academic", "Biology IB Grade 11 • SBI3UC • University", "Chemistry IB Grade 11 • SCH3UC • University", "Physics IB Grade 11 • SPH3U4 • University", "Biology IB Grade 12 • PSK4UC • University", "Biology IB Part 1 Grade 12 • SBI4UC • University", "Chemistry IB Part 1 Grade 12 • SCH4UC • University", "Chemistry IB Grade 12 • SNC4MC • University/College", "Physics IB Grade 12 • SPH4U4 • University", "Peer Tutoring Part 2 Grade 11-12 • HPW3C1 • College", "Families in Canada Grade 12 • HHS4C1 • College","Families in Canada Grade 12 • HHS4U1 • University", "Communications Technology Grade 9 • TGJ1O1 • Open", "Communications Technology Grade 10 • TGJ2O1 • Open", "Communications Technology Grade 11 • TGJ3M1 • University/College", "Communications Technology Grade 12 • TGJ4M1 • University/College"
]
    @State private var searchText : String = ""
    @State var interstitial: GADInterstitialAd?
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search Course Code (Ex. MPM2D1)")
                List {
                    ForEach(self.cars.filter {
                        self.searchText.isEmpty ? true : $0.lowercased().contains(self.searchText.lowercased())
                    }, id: \.self) { car in
                        Text(car).font(Font.custom("Arial", size: 15.0))                    }
                }.navigationBarTitle(Text("Course Codes"))
            }.onTapGesture {
                hideKeyboard()
        }
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
}

struct SearchBar: UIViewRepresentable {

    @Binding var text: String
    var placeholder: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}
    
struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
}
extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
