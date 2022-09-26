//
//  ContentView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 26.09.2022.
//

import SwiftUI

struct TabViewContent: View {
    
    @State private var selection = 0
    
    private func changeSelectedImage(selection: Int, defaultImage: Image, selectedImage: Image) -> Image {
        if self.selection == selection {
            return selectedImage.renderingMode(.original)
        } else {
            return defaultImage.renderingMode(.original)
        }
    }
        
    var body: some View {
        TabView(selection: $selection) {
            Text("TapeModule")
                .tabItem {
                    Text("Лента")
                    changeSelectedImage(selection: 0,
                                        defaultImage: Image("tape"),
                                        selectedImage: Image("tapeSelected"))
                }.tag(0)
        }
        .accentColor(.green)
    }
}

struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContent()
    }
}
