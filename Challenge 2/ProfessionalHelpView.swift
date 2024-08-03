//
//  ProfessionalHelpView.swift
//  Challenge 2
//
//  Created by T Krobot on 27/7/24.
//

import SwiftUI

struct ProfessionalHelpView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Help Hotlines")
                        .bold()
                        .padding(20)
                    Link(destination: URL(string: "https://www.gov.sg/article/call-these-helplines-if-you-need-emotional-or-psychological-support")!) {
                        Image(systemName: "link.circle.fill")
                            .font(.largeTitle)
                        Spacer()
                    }
                }
                HStack{
                    Text("Resources for mental well-being")
                        .bold()
                        .padding(20)
                    Link(destination: URL(string: "https://www.ncss.gov.sg/our-initiatives/beyond-the-label/resources")!) {
                        Image(systemName: "link.circle.fill")
                            .font(.largeTitle)
                        Spacer()
                    }
                }
                Spacer()
            }
            .navigationTitle("Professional Help")
        }
    }
}


#Preview {
    ContentView()
}
