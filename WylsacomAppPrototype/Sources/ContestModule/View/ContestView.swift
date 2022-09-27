//
//  ContestView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct ContestView: View {
    
    @ObservedObject private var contestViewModel = ContestViewModel()
    
    var body: some View {
        ScrollView {
            NavigationView(title: "Конкурсы")
                .padding(.bottom, 20)
            ForEach(contestViewModel.contest) { cell in
                ContestCellType(cell: cell)
                    .padding(.bottom, 10)
            }
        }
    }
}

struct ContestView_Previews: PreviewProvider {
    static var previews: some View {
        ContestView()
    }
}
