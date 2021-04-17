//
//  Material.swift
//  plotnost
//
//  Created by Stacy on 17.04.21.
//

import Foundation


class Material: NSObject {
    var name: String
    var density: Int
    
    init(name: String, density:Int) {
        self.name = name
        self.density = density
    }
}
