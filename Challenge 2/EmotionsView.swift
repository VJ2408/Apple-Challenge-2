//
//  EmotionsView.swift
//  Challenge 2
//
//  Created by Madhan on 3/8/24.
//


import SwiftUI

struct EmotionsView: View {
    @Binding var selectedEmotion: String
    let emotions = ["face.smiling", "face.dashed", "face.raised.eyebrow", "face.sad.tears", "face.smiling.tears", "face.with.monocle", "face.with.stars", "face.screaming.fear", "face.halo", "face.thermometer", "face.vomiting", "face.melting", "face.relieved", "face.with.head.bandage", "face.with.cowboy.hat", "face.in.clouds", "face.tongue", "face.zipper", "face.speech.bubble", "face.with.spiral.eyes", "face.with.dotted.lines", "face.frowning", "face.with.thermometer", "face.with.steamed.eyes", "face.sleeping"]

    var body: some View {
        let columns = [GridItem(.adaptive(minimum: 50))]
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(emotions, id: \.self) { emotion in
                    Button(action: {
                        selectedEmotion = emotion
                    }) {
                        Image(systemName: emotion)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Emotions.")
        .navigationBarTitleDisplayMode(.inline)
    }
}
