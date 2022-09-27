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
            ForEach(videoViewModel.video) { cell in
                VideoCellType(cell: cell)
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
