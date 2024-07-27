//
//  ContentView.swift
//  Challenge 2
//
//  Created by Vijai Adithya on 27/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            JournalView()
                .tabItem {
                    Label("Journal", systemImage: "pencil.and.list.clipboard")
                }
            ProfessionalHelpView()
                .tabItem {
                    Label("Professional Help", systemImage: "questionmark.circle")
                }
        }
    }
}
    
    
    
#Preview {
    ContentView()
}
