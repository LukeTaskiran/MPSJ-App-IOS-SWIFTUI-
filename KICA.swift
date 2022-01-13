//
//  KICA.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-01.
//

import SwiftUI
import GoogleMobileAds
struct KICA: View {
    @State var showingAlert = false
    @State var answer: Double = 13
    var body: some View {
        VStack{
        VStack{
            KICATop()
            BannerAd().frame(width: .infinity, height: 100, alignment: .center)
        }
       
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct KICA_Previews: PreviewProvider {
    static var previews: some View {
        KICA()
    }
}

struct KICATop: View{
    @State var mark: String = ""
    @State var outof: String = ""
    @State var percent: String = ""
    @State var mark1: String = ""
    @State var outof1: String = ""
    @State var percent1: String = ""
    @State var mark2: String = ""
    @State var outof2: String = ""
    @State var percent2: String = ""
    @State var mark3: String = ""
    @State var outof3: String = ""
    @State var percent3: String = ""
    @State var showingAlert = false
    var answer1: Double { get{
        return Percentage(number: mark, number2: outof, number3: percent)}
    }
    var body: some View {
        VStack(spacing: 15){
        VStack{
            Text("Knowledge")
    HStack{
        Text("Mark")
            .minimumScaleFactor(0.02)
            .lineLimit(1)
            .padding()
        TextField("", text: $mark)
            .cornerRadius(20)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .foregroundColor(.black)
            .keyboardType(UIKeyboardType.numberPad)
            
        Text("/")
            .padding()
        TextField("", text: $outof)
            .cornerRadius(20)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .foregroundColor(.black)
            .keyboardType(UIKeyboardType.numberPad)
            
        Text("Weighted \n Percent")
            .minimumScaleFactor(0.02)
            .lineLimit(2)
        Spacer()
        TextField("", text: $percent)
            .cornerRadius(20)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .scaleEffect(1.2)
            .foregroundColor(.black)
            .keyboardType(UIKeyboardType.numberPad)
            .padding()
    }
            
        }.multilineTextAlignment(.center)
            .background(Color.red)
            .cornerRadius(20)

        VStack{
            Text("Inquiry/Thinking")
        HStack{
            Text("Mark")
                .minimumScaleFactor(0.02)
                .lineLimit(1)
                .padding()
            TextField("", text: $mark1)
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                .foregroundColor(.black)
                .keyboardType(UIKeyboardType.numberPad)
            Text("/")
                .padding()
            TextField("", text: $outof1)
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                .foregroundColor(.black)
                .keyboardType(UIKeyboardType.numberPad)
            Text("Weighted \n Percent")
                .minimumScaleFactor(0.02)
                .lineLimit(2)
            Spacer()
            TextField("", text: $percent1)
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                .foregroundColor(.black)
                .scaleEffect(1.2)
                .keyboardType(UIKeyboardType.numberPad)
                .padding()
        }
        }.multilineTextAlignment(.center)
            .background(Color.blue)
            .cornerRadius(20)
            
            VStack{
                Text("Communication")
            HStack{
                Text("Mark")
                    .minimumScaleFactor(0.02)
                    .lineLimit(1)
                    .padding()
                TextField("", text: $mark2)
                    .cornerRadius(20)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                    .keyboardType(UIKeyboardType.numberPad)
                Text("/")
                    .padding()
                TextField("", text: $outof2)
                    .cornerRadius(20)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                    .keyboardType(UIKeyboardType.numberPad)
                Text("Weighted \n Percent")
                    .minimumScaleFactor(0.02)
                    .lineLimit(2)
                Spacer()
                TextField("", text: $percent2)
                    .cornerRadius(20)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                    .scaleEffect(1.2)
                    .keyboardType(UIKeyboardType.numberPad)
                    .padding()
            }
            }.multilineTextAlignment(.center)
                .background(Color.gray)
                .cornerRadius(20)

            VStack{
                Text("Application")
            HStack{
                Text("Mark")
                    .minimumScaleFactor(0.02)
                    .lineLimit(1)
                    .padding()
                TextField("", text: $mark3)
                    .cornerRadius(20)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                    .keyboardType(UIKeyboardType.numberPad)
                    
                Text("/")
                    .padding()
                TextField("", text: $outof3)
                    .cornerRadius(20)
                    .keyboardType(UIKeyboardType.numberPad)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                Text("Weighted \n Percent")
                    .minimumScaleFactor(0.02)
                    .lineLimit(2)
                Spacer()
                TextField("", text: $percent3)
                    .cornerRadius(20)
                    .keyboardType(UIKeyboardType.numberPad)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(.black)
                    .scaleEffect(1.2)
                    .padding()
            }
            }.multilineTextAlignment(.center)
                .background(Color.green)
                .cornerRadius(20)
            
            Button("Calculate") {
              
                
                
                showingAlert = true
                
            }.alert("You got a mark of \n \((Percentage(number:mark,number2: outof,number3:percent)+Percentage(number:mark1,number2: outof1,number3:percent1)+Percentage(number:mark2,number2: outof2,number3:percent2)+Percentage(number:mark3,number2: outof3,number3:percent3))*100)", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
                
            }.scaleEffect(2)
                .padding()
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
struct KICASecond: View{
    @State var mark1: String = ""
    @State var outof1: String = ""
    @State var percent1: String = ""
    var body: some View {
        VStack{
            Text("Inquiry/Thinking")
        HStack{
            Text("Mark")
                .minimumScaleFactor(0.2)
                .lineLimit(1)
                .padding()
            TextField("", text: $mark1)
                .cornerRadius(20)
                
            Text("/")
                .padding()
            TextField("", text: $outof1)
                .cornerRadius(20)
                
            Text("Weighted \n Percent")
                .minimumScaleFactor(0.2)
                .lineLimit(2)
            Spacer()
            TextField("", text: $percent1)
                .cornerRadius(20)
                .padding()
        }
        }.multilineTextAlignment(.center)
            .background(Color.blue)
}
    
}
struct KICAThird: View{
    @State var mark2: String = ""
    @State var outof2: String = ""
    @State var percent2: String = ""
    var body: some View {
        VStack{
            Text("Communication")
        HStack{
            Text("Mark")
                .minimumScaleFactor(0.2)
                .lineLimit(1)
                .padding()
            TextField("", text: $mark2)
                .cornerRadius(20)
                
            Text("/")
                .padding()
            TextField("", text: $outof2)
                .cornerRadius(20)
                
            Text("Weighted \n Percent")
                .minimumScaleFactor(0.2)
                .lineLimit(2)
            Spacer()
            TextField("", text: $percent2)
                .cornerRadius(20)
                .padding()
        }
        }.multilineTextAlignment(.center)
            .background(Color.gray)
}
    
}
struct KICABottom: View{
    @State var mark3: String = ""
    @State var outof3: String = ""
    @State var percent3: String = ""
    var body: some View {
        VStack{
            Text("Application")
        HStack{
            Text("Mark")
                .minimumScaleFactor(0.2)
                .lineLimit(1)
                .padding()
            TextField("", text: $mark3)
                .cornerRadius(20)
                
            Text("/")
                .padding()
            TextField("", text: $outof3)
                .cornerRadius(20)
                
            Text("Weighted \n Percent")
                .minimumScaleFactor(0.2)
                .lineLimit(2)
            Spacer()
            TextField("", text: $percent3)
                .cornerRadius(20)
                .padding()
        }
        }.multilineTextAlignment(.center)
            .background(Color.green)
}
    
}
func Percentage(number: String, number2: String, number3: String) -> Double {
    let INTnumber = Double(number) ?? 0
    let INTnumber2 = Double(number2) ?? 0
    let INTnumber3 = Double(number3) ?? 0
    
    let weighted = (INTnumber/INTnumber2) * (INTnumber3/100)
    return weighted
}


