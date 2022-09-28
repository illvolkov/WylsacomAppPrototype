//
//  TapeViewModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

class TapeViewModel: ObservableObject {
    @Published var news = [Section]()
    
    init() {
        news = TapeModel.getData()
    }
}
