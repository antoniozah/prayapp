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
    
    static let shared = HomeViewModel()
    private init() { }
    
    let prayData = PrayData()
    var prayCategories: [PrayCategory] = []
    var isDarkMode: Bool = false
   
    func setPrayCategories() {
        prayCategories = prayData.prayCategories
    }
}
