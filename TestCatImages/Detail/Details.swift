//
//  Details.swift
//  TestCatImages
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct Details: View {
    @Binding var name: String
    @ObservedObject var dataCats = CatImagesViewModel()
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: 350, height: 350)
    }
}
