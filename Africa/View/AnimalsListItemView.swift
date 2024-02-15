//
//  AnimalsListItemView.swift
//  Africa
//
//  Created by Ahmed Gomaa on 15/02/2024.
//

import SwiftUI

struct AnimalsListItemView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
            ForEach(animals){ animal in 
                HStack(alignment: .center, spacing: 16) {
                    Image(animal.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80 ,height: 80)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                    
                    VStack(alignment: .leading, spacing: 8 ) {
                        Text(animal.name)
                            .font(.title2)
                            .foregroundStyle(Color.accentColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(animal.headline)
                            .font(.footnote)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    }
                    
                }
                
            }
        }
}

#Preview {
    AnimalsListItemView()
}
