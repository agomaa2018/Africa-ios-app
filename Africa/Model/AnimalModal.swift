//
//  AnimalModal.swift
//  Africa
//
//  Created by Ahmed Gomaa on 15/02/2024.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name : String
    let headline: String
    let description: String
    let link : String
    let image : String
    let gallery: [String]
    let fact: [String]
}
