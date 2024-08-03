//
//  JournalView.swift
//  Challenge 2
//
//  Created by T Krobot on 27/7/24.
//
import SwiftUI

struct JournalView: View {
    @State private var activities: [Activity] = []
    @State private var newActivity: String = ""

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(activities) { activity in
                        NavigationLink(destination: ActivityDetailView(activity: $activities[getIndex(of: activity)])) {
                            HStack {
                                Image(systemName: activity.emotion.isEmpty ? "circle.dashed" : activity.emotion)
                                Text(activity.name)
                            }
                        }
                    }
                }
                .navigationTitle("What did you do today?")
                Spacer()
                HStack {
                    TextField("New Activity", text: $newActivity)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    Button(action: addActivity) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.trailing)
                    }
                }
            }
        }
    }
    
    func getIndex(of activity: Activity) -> Int {
        activities.firstIndex(where: { $0.id == activity.id })!
    }

    func addActivity() {
        if !newActivity.isEmpty {
            activities.append(Activity(name: newActivity))
            newActivity = ""
        }
    }
}
