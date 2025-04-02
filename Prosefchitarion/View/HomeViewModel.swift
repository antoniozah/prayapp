//
//  HomeViewModel.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

import Foundation

@Observable
@MainActor
class HomeViewModel {
    let prayData = PrayData()
    var prayCategories: [PrayCategory] = []
    
    init() {
        
    }
    
    func setPrayCategories() {
        prayCategories = prayData.prayCategories
    }
}
