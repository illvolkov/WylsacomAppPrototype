//
//  ContentView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 26.09.2022.
//

import SwiftUI

struct TabViewContent: View {
        
    @State private var selection = 0
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    private func changeSelectedImage(selection: Int, defaultImage: Image, selectedImage: Image) -> Image {
        if self.selection == selection {
            return selectedImage.renderingMode(.original)
        } else {
            return defaultImage.renderingMode(.original)
        }
    }
        
    var body: some View {
        TabView(selection: $selection) {
            TapeView()
                .tabItem {
                    Text("Лента")
                    changeSelectedImage(selection: 0,
                                        defaultImage: Image("tape"),
                                        selectedImage: Image("tapeSelected"))
                }.tag(0)
            ContestView()
                .tabItem {
                    Text("Конкурсы")
                    changeSelectedImage(selection: 1,
                                        defaultImage: Image("contest"),
                                        selectedImage: Image("contestSelected"))
                }.tag(1)
            VideoView()
                .tabItem {
                    Text("Видео")
                    changeSelectedImage(selection: 2,
                                        defaultImage: Image("video"),
                                        selectedImage: Image("videoSelected"))
                }.tag(2)
            CollaborationView()
                .tabItem {
                    Text("Годнота")
                    changeSelectedImage(selection: 3,
                                        defaultImage: Image("collaboration"),
                                        selectedImage: Image("collaborationSelected"))
                }.tag(3)
        }
        .accentColor(.green)
    }
}

struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContent()
    }
}
