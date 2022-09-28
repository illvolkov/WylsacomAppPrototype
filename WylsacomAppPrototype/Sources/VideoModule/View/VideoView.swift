//
//  VideoView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct VideoView: View {
    
    @ObservedObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        ScrollView {
            NavigationView(title: "Видео")
                .padding(.bottom, 20)
            ForEach(videoViewModel.video) { cell in
                VideoCellType(cell: cell)
                    .padding(.bottom, 10)
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
