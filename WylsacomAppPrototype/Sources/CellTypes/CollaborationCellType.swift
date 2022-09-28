//
//  CollaborationCellType.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct CollaborationCellType: View {
    
    let cell: Cell
    private let viewWidth = UIScreen.main.bounds.width
    
    private func setDifferentColorForCell() -> Color {
        
        switch cell.title {
        case "Аудио-очки Bose Frames":
            return Color("orangeCustomColor")
        case "Звук от HUAWEI":
            return Color("blackCustomColor")
        case "Фототехника класса Hight-end":
            return Color("grayCustomColor")
        case "Подборка кроссовок на осень":
            return Color("brownCustomColor")
        case "Кроссовки из переработанных материалов":
            return Color("greenCustomColor")
        case "Скидка на воскрешение кроссовок":
            return Color("yellowCustomColor")
        default:
            return Color.clear
        }
    }
    
    private func setDifferentColorForTitle() -> Color {
        switch cell.title {
        case "Фототехника класса Hight-end",
            "Подборка кроссовок на осень",
            "Скидка на воскрешение кроссовок":
            return Color.black
        default:
            return Color.white
        }
    }
    
    private func setDifferentColorForSubTitle() -> Color {
        switch cell.title {
        case "ricoh x wylsacom",
            "sneakerhead x wylsacom",
            "sole fresh x wylsacom":
            return Color.gray
        default:
            return Color.white
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 5) {
                Text(cell.subTitle.uppercased())
                    .font(.system(size: viewWidth * 0.033))
                    .fontWeight(.semibold)
                    .foregroundColor(setDifferentColorForSubTitle())
                Text(cell.title)
                    .frame(alignment: .leading)
                    .font(.system(size: viewWidth * 0.07))
                    .fontWeight(.semibold)
                    .foregroundColor(setDifferentColorForTitle())
            }
            .padding([.leading, .trailing], 40)
            .padding(.top, 30)
            .padding(.bottom, 20)
            Image(cell.image)
                .resizable()
                .padding([.leading, .trailing], 20)
                .frame(height: viewWidth * 0.6)
        }
        .frame(width: viewWidth)
        .padding([.leading, .trailing], -20)
        .background(setDifferentColorForCell())
        .cornerRadius(10)
    }
}

struct CollaborationCellType_Previews: PreviewProvider {
    static var previews: some View {
        CollaborationCellType(cell: Cell(image: "bose", title: "Аудио-очки Bose Frames", subTitle: "Bose x Wylsacom", date: nil))
    }
}
