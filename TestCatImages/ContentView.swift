//
//  ContentView.swift
//  TestCatImages
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State var buttonIsHidden = false
    @ObservedObject var dataCats = CatImagesViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ForEach(dataCats.images, id: \.self) {image in
                    ImageScreen(image: image)
                }
            }
            .navigationTitle("Cats")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

