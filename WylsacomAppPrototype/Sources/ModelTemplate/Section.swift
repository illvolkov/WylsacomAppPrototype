//
//  SectionNews.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct Section: Identifiable {
    let id = UUID()
    let type: SectionType
    var news: [Cell]
}
