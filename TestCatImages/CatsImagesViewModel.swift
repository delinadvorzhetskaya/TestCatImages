//
//  CatsImagesViewModel.swift
//  TestCatImages
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import Foundation
import Combine
import SwiftUI

class CatImagesViewModel: ObservableObject {
    
    @State static var correntImage = "cat1"
    @Published var images = getImages()
    
    static let imagesNames = ["cat0", "cat1", "cat2", "cat3", "cat4", "cat5", "cat6"]
    
    static func getImages() -> [CatsImagesModel] {
        var catsImages: [CatsImagesModel] = []
        for image in 0...imagesNames.count - 1 {
//            catsImages.append(CatsImagesModel(id: image, name: imagesNames[image], resizing: true, hideButton: true))
            catsImages.append(CatsImagesModel(id: image, name: imagesNames[image]))
        }
        return catsImages
    }
    
    static var catsImages: [CatsImagesModel] {
        getImages()
    }
}


