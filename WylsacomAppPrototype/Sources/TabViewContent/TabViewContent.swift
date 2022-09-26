//
//  ContentView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 26.09.2022.
//

import SwiftUI

struct TabViewContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContentView()
    }
}
