//
//  CollaborationViewModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

class CollaborationViewModel: ObservableObject {
    @Published var collaboration = [Cell]()
    
    init() {
        collaboration = CollaborationModel.getData()
    }
}
