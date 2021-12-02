//
//  CatsImagesModel.swift
//  TestCatImages
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import Foundation
import Combine

//struct CatsImagesModel: Hashable, Codable, Identifiable {
//
//    var id: Int
//    var name: String
//    var resizing: Bool
//    var hideButton: Bool
//}

final class CatsImagesModel: Identifiable, ObservableObject {
    var id: Int = 0
    var name: String = ""
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    private init() { }
}


extension CatsImagesModel: Hashable {
    static func == (lhs: CatsImagesModel, rhs: CatsImagesModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
            hasher.combine(name)
        }
}
