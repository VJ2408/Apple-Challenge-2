//
//  HomeView.swift
//  Challenge 2
//
//  Created by T Krobot on 27/7/24.
//

import SwiftUI
struct HomeView: View {
    @State private var progress = 0.7
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .stroke(
                        Color.pink.opacity(0.5),
                        lineWidth: 20
                    )
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        Color.pink,
                        style: StrokeStyle(
                            lineWidth: 20,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                // 1
                    .animation(.easeOut, value: progress)
                
            }
            .padding(30 )
            
        }
    }
}


#Preview {
    HomeView()
}
