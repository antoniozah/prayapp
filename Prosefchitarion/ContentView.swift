//
//  ContentView.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    let vm = HomeViewModel.shared
    
    var body: some View {
        NavigationStack{
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
                
               
                
                VStack() {
                    Text("Προσευχητάριον Ορθοδοξίας")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 12)
                        .padding(.bottom, 32)
                    
                    ForEach(vm.prayData.prayCategories) { category in
                        NavigationLink {
                            CategoryView(category: category)
                        } label: {
                            HStack {
                                Image(systemName: "circle.grid.cross.fill")
                                    .foregroundStyle(.red)
                                
                                Text(category.name)
                                    .font(.title3)
                                    
                                    .padding(.vertical, 12)
                                    .padding(.trailing)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                
                            }
                            .padding(.horizontal)
                            
                        }
                        .padding(.bottom, 12)
                    
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "gear")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        vm.isDarkMode.toggle()
                    } label: {
                        Image(systemName: vm.isDarkMode ? "sun.max.circle" : "moon.circle")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
            }
        }
        
        
        .foregroundStyle(vm.isDarkMode ? .white : .black)
        .preferredColorScheme(vm.isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
