//
//  ContentView.swift
//  Africa
//
//  Created by Ahmed Gomaa on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            NavigationView{ 
                List { 
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    AnimalsListItemView()
                }
                .navigationBarTitle("Africa", displayMode: .large)
                
            }
        
    }
}

#Preview {
    ContentView()
}
