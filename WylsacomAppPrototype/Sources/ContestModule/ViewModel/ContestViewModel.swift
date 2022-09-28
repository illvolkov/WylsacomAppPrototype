//
//  ContestViewModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

class ContestViewModel: ObservableObject {
    @Published var contest = [Cell]()
    
    init() {
        contest = ContestModel.getData()
    }
}
