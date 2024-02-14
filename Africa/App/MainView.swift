//
//  MainView.swift
//  Africa
//
//  Created by Ahmed Gomaa on 14/02/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem { 
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                .tabItem { 
                    Image(systemName: "play.rectangle")
                    Text("Video") 
                }
            
            MapView()
                .tabItem { 
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            GalleryView()
                .tabItem { 
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

#Preview {
    MainView()
}
