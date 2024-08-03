//
//  ActivityView.swift
//  Challenge 2
//
//  Created by Madhan on 3/8/24.
//

import SwiftUI

struct Activity: Identifiable {
    let id = UUID()
    var name: String
    var details: String = ""
    var emotion: String = ""
}
