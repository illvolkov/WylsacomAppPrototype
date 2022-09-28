//
//  PodcastViewModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 28.09.2022.
//

import SwiftUI

class PodcastViewModel: ObservableObject {
    @Published var podcast = [Cell]()
    
    init() {
        podcast = PodcastModel.getData()
    }
}
