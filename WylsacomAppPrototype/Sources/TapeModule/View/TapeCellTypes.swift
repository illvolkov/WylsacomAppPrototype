//
//  TapeCellTypes.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct TapeCellTypes: View {
    
    let section: Section
    let cell: Cell
    
    var body: some View {
        types
    }
    
    @ViewBuilder var types: some View {
        switch section.type {
        case .news:
            NewsCellType(section: section, cell: cell)
        case .video:
            VideoCellType(section: section, cell: cell)
        }
    }
}

struct TapeCellTypes_Previews: PreviewProvider {
    static var previews: some View {
        TapeCellTypes(section: Section(type: .news, news: [Cell(image: "", title: "", subTitle: "", date: "")]), cell: Cell(image: "number.of.day", title: "fsdfsdf", subTitle: "fsdfsdf", date: "fsdfsdf"))
    }
}
