//
//  ActivityDetailView.swift
//  Challenge 2
//
//  Created by Madhan on 3/8/24.
//
import SwiftUI
struct ActivityDetailView: View {
    @Binding var activity: Activity
    @State private var activityDetails: String = ""

    var body: some View {
        VStack {
            TextField("Details about \(activity.name)", text: $activityDetails, axis: .vertical)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onAppear {
                    activityDetails = activity.details
                }
                
                .onChange(of: activityDetails) { _, newValue in
                    activity.details = newValue
                }
            Spacer()
            NavigationLink(destination: EmotionsView(selectedEmotion: $activity.emotion)) {
                Image(systemName: activity.emotion.isEmpty ? "circle.dashed" : activity.emotion)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
            }
        }
        .navigationTitle(activity.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
