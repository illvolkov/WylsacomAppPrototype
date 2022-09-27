//
//  News.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct Cell: Identifiable {
    let id = UUID()
    let image: String
    let subImage = "wylsa"
    let title: String
    let subTitle: String
    let date: String?
}
