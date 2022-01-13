//
//  SecondFloor.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-01.
//

import SwiftUI

struct SecondFloor: View {
    var body: some View {
        ZoomableScrollView {
            Image("Second Floor MAP")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct SecondFloor_Previews: PreviewProvider {
    static var previews: some View {
        SecondFloor()
    }
}
