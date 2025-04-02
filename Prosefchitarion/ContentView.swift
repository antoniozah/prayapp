//
//  ContentView.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @State var isDarkMode = false
        
        NavigationStack {
            ZStack {
                Image(.paperBg)
                    .resizable()
                
                VStack {
                    Text("Προσευχητάριον")
                        .font(.largeTitle)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
