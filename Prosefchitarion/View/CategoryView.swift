//
//  CategoryView.swift
//  Prosefchitarion
//
//  Created by Antonios Zachos on 2/4/25.
//

import SwiftUI

struct CategoryView: View {
    let vm = HomeViewModel.shared
    var category: PrayCategory
    
    var categoryPrays: [Pray] {
        var filtered: [Pray]? = []
        filtered = PrayData().prays.filter { $0.categoryId == category.id }
        return filtered ?? []
    }
    
    var body: some View {
        ZStack {
            Image(.paperBg)
                .resizable()
                .ignoresSafeArea()
                .overlay {
                    if vm.isDarkMode {
                        Color.black.opacity(0.95)
                            .ignoresSafeArea()
                    } else {
                        Color.clear
                            .ignoresSafeArea()
                    }
                }
            
            if !categoryPrays.isEmpty {
                ScrollView {
                    ForEach(categoryPrays[0].sections) { pray in
                        Text(pray.sectionTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 10)
                            .padding(.horizontal, 16)
                        
                        ForEach(pray.prayElement) { element in
                    
                            if element.prayKind != "" {
                                Text(element.prayKind ?? "")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 16)
                            }
                                
                                Text(element.prayText)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.bottom, 10)
                                    .padding(.horizontal, 16)
                          
                        }
                    }
                    Image(systemName: "circle.grid.cross")
                        .font(.title)
                        .foregroundStyle(.red)
                }
                
            } else {
                VStack {
                    Text(category.name)
                        .font(.title)
                }
            }
        }
        .foregroundStyle(vm.isDarkMode ? .white : .black)
        .preferredColorScheme(vm.isDarkMode ? .dark : .light)
        .navigationTitle(!categoryPrays.isEmpty ? categoryPrays[0].name : category.name)
    }
    
}

#Preview {
    CategoryView(category: PrayData().prayCategories[0])
}
