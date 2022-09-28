//
//  CollaborationView.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct CollaborationView: View {
    
    private let collaborationViewModel = CollaborationViewModel()
    
    var body: some View {
        ScrollView {
            NavigationView(title: "Годнота")
                .padding(.bottom, 20)
            ForEach(collaborationViewModel.collaboration) { cell in
                CollaborationCellType(cell: cell)
                    .padding(.bottom, 10)
            }
        }
    }
}

struct CollaborationView_Previews: PreviewProvider {
    static var previews: some View {
        CollaborationView()
    }
}
