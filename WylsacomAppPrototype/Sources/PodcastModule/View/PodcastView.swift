//
//  PodcastView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 28.09.2022.
//

import SwiftUI

struct PodcastView: View {
    
    private let podcastViewModel = PodcastViewModel()
    
    var body: some View {
        ScrollView {
            NavigationView(title: "Подкасты")
                .padding(.bottom, 20)
            ForEach(podcastViewModel.podcast) { cell in
                PodcastCellType(cell: cell)
                    .padding(.bottom, 10)
            }
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
