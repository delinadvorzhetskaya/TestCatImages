//
//  ImageScreen.swift
//  TestCatImages
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct ImageScreen: View {
    @State var image: CatsImagesModel
    @State var resizing = true
    @State var hideButton = true
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 15) {
            
            Image(image.name)
                .resizable()
                .frame(width: self.resizing ? 150 : 280, height: self.resizing ? 150 : 280)
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            withAnimation {
                                self.resizing.toggle()
                                self.hideButton.toggle()
                            }
                            CatImagesViewModel.correntImage = image.name
                        })
                )
            
            if hideButton {
                NavigationLink(destination: Details(name: $image.name), label: {
                    EmptyView()
                })
            } else {
                NavigationLink(destination: Details(name: $image.name), label: {
                    Text("Zoom")
                })
            }
        }
    }
}
