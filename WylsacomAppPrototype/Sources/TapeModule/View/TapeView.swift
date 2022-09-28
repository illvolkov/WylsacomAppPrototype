//
//  TapeView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 26.09.2022.
//

import SwiftUI

struct TapeView: View {
        
    private let viewWidth = UIScreen.main.bounds.width
    
    @ObservedObject private var tapeViewModel = TapeViewModel()
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.vertical) {
            NavigationView(title: "Лента")
                .padding(.bottom, 20)
            ForEach(tapeViewModel.news) { section in
                ForEach(section.news) { cell in
                    TapeCellTypes(section: section, cell: cell)
                        .padding(.bottom, 10)
                }
            }
        }
    }
}

struct TapeView_Previews: PreviewProvider {
    static var previews: some View {
        TapeView()
    }
}
