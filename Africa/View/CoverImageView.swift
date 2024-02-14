//
//  CoverImageView.swift
//  Africa
//
//  Created by Ahmed Gomaa on 14/02/2024.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}
