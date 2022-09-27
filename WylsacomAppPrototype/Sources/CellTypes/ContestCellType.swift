//
//  ContestCellType.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct ContestCellType: View {
    
    let cell: Cell
    private let viewWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 5) {
                Text(cell.subTitle.uppercased())
                    .font(.system(size: viewWidth * 0.035))
                    .fontWeight(.semibold)
                Text(cell.title)
                    .font(.system(size: viewWidth * 0.074))
                    .fontWeight(.bold)
            }
            .opacity(0.5)
            .frame(width: viewWidth * 0.8, alignment: .leading)
            .padding(.top, 40)
            .padding([.leading, .trailing], 20)
            Spacer()
            Image(cell.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15, corners: [.bottomLeft, .bottomRight])
        }
        .frame(height: cell.title == "Конкурс на The Red Hydrogen One" ?  viewWidth * 1.45 : viewWidth * 1.1)
        .padding([.leading, .trailing], 20)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray)
                .opacity(0.5)
            .foregroundColor(.clear)
            .padding([.leading, .trailing], 20)
        )
    }
}

struct ContestCellType_Previews: PreviewProvider {
    static var previews: some View {
        ContestCellType(cell: Cell(image: "hydrogen", title: "iPhone 13 Pro Max среди пользователей тарифа", subTitle: "Завершен", date: nil))
    }
}
