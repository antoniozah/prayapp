//
//  PrayElement.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

import SwiftUI

struct PrayElement: Identifiable {
    var id = UUID()
    let prayKind: String?
    let prayActor: String?
    let prayHeading: String?
    let prayPrefix: [String]?
    let praySuffix: [String]?
    let prayText: String
}
