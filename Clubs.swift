//
//  Clubs.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-03.
//

import SwiftUI

struct Clubs: View {
    let cars = ["Amnesty International","Angel Foundation","Anime Club","Art Club","Aviation Club","Best Buddies Club","Black History Month","Books, Quills, and Writing Skills","Camp White Pine","CHEF Charity","Communication Technology","Documentary Film Society","Drama Club","Drum Line & Concert Band","Duke of Eedingurg's Award","Fitness Club","Fly Tying Club","Free The Children","Global Ideas Institute","God Squad","Gr.12   Drama Showcase","Green Power","Gay Straight Allicabce Club","HOSA","Hours of Code Club","IB Executive","Indigenous Awareness Club","Mental Health Awareness Club","Mini Olympics","Mother/Daughter Wellness Tea","MPSJ Fashion Show","Multifest","Orchestra","Power International Student Association","Power Planters","Power Play","Power Rocks Variety Show","Power Supply Store","Power TV Club","POWERMUN","Pro-Con Debating Club","Reach for the Top","Robotics Club","Rogers TV Sports Brodcasting Club","Safe Schools","Science Club","Show Choir","Small Chamber Group","Special Strings","Stage Band","Student Council","The DECA Club","Ukrainian Hertiage Club","White Pine South","Yearbook Comittee"]
    var clubsdesc = ["Students meet once a week during school year for discussions", "Sept - May: a comittee of students are selected to organize the collection of money for the foundation. They also make announcements about the status of the foundation. They organize a board wide civies day, and a gala to raise funds", "This group meets on Wednesdays from 2:35 - 4:00 to celebrate everything Anime", "Feb - May: a weekly meeting to discuss art, and to work on techniques and on personal and group work", "Oct - Nov, Jan - March, May: Using flight simulator technology, students become familiar with principles of flight, avionics, and employment trends", " Yearlong commitment: this club pairs student from grade 9-12 with a special needs student. And, help accompany the student to as many school events", "Sept - Feb: students meet for 4-5 days a week to dance, and write and create dramatic scences", "Sept - Feb: student meet Monday after school for 1.5 hours. This is a creative group writing group for students", "Sept: Consellors are selected from an interview process and they meet throughout the year to plan events", "A charity founded by MPSJ students. Students meet once or twice a week to plan fundraising activites and events", "Sept - June: Caltholic film Festival, poster of school plays, indigenous art, installation, music dept, etc", "Students meet once a week from November to April to watch a documentary", "Those intrested in performing spoken word for Mother/Daughter tea and performing dramatic scences for Navigating the Teen Brain", "Sept - May: students meet for one hour once a week to prepare for the Christmas and Spring Concert and for special events", "Students meet to discuss and prepare for the series of activites that need to be completed for this award", "Sept - June: students pay a fee to access the weight room and fitness bikes. The room is open each day after school.", "Students meet in semester two and finish at the end of April. They meet after school once a week to learn to tie flies for fly fishing", "Students present a docudrama on the stage to classes twice a year in order to raise money to build school throughout the world. Students write and rehearse for at least 25 hours each semester "]
    @State private var searchText : String = ""
    @State var showingAlert = false
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search for Clubs Name (Ex. Art Club)")
                List {
                    ForEach(self.cars.filter {
                        self.searchText.isEmpty ? true : $0.lowercased().contains(self.searchText.lowercased())
                    }, id: \.self) { car in
                        Text(car).font(Font.custom("Arial", size: 15.0))
                            
                    }
                }.navigationBarTitle(Text("Find a Club"))
            }.onTapGesture {
                hideKeyboard()
        }
        }.navigationViewStyle(StackNavigationViewStyle())
        .frame(maxWidth: .infinity, maxHeight: .infinity)
}
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
    
struct Clubs_Previews: PreviewProvider {
    static var previews: some View {
        Clubs()
    }
}



