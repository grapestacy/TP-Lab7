//
//  Materials.swift
//  plotnost
//
//  Created by Stacy on 17.04.21.
//

import Foundation

class MaterialsRepository: NSObject {
   private var materials:[Material] = []
    init(with data:[String:Int]) {
        for material in data {
            materials.append(Material(name: material.key, density: material.value))
        }
    }
    
    func getMaterials() -> [Material] {
        return materials
    }
}
