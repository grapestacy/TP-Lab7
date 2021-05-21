//
//  City.swift
//  W&W
//
//  Created by Stacy on 17.04.21.
//

import Foundation

class City {
    let name: String
    var authorName: String?
    var authorBookName: String?
    var autorImage: String?
    
    init(name: String, authorName: String?, authorBookName: String?, autorImage: String?) {
        self.name = name
        self.authorName = authorName
        self.authorBookName = authorBookName
        self.autorImage = autorImage
      }
}
