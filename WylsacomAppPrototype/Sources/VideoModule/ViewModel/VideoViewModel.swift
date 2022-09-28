//
//  VideoViewModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

class VideoViewModel: ObservableObject {
    @Published var video = [Cell]()
    
    init() {
        video = VideoModel.getData()
    }
}
