//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ahmed Gomaa on 14/02/2024.
//

import Foundation

extension Bundle {
    func decode<T : Codable>(_ file : String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            print("here 1")
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            print("here 2")
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode( T.self , from: data) else {
            print("here 3")
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded 
    }
}
