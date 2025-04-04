//
//  PraySection.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

import SwiftUI

struct PraySection: Identifiable {
    var id = UUID()
    let sectionTitle: String
    let sectionColor: Color
    let prayElement: [PrayElement]
}
