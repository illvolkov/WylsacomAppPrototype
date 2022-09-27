//
//  NewsCellType.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct NewsCellType: View {
    
    let section: Section
    let cell: Cell
    private let viewWidth = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Image(cell.image)
                .resizable()
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
                .opacity(0.5)
            VStack(alignment: .leading) {
                Text(cell.date)
                    .foregroundColor(.white)
                    .font(.system(size: viewWidth * 0.027))
                    .fontWeight(.semibold)
                Spacer()
                Text(cell.title)
                    .foregroundColor(.white)
                    .font(.system(size: viewWidth * 0.05))
                    .fontWeight(.semibold)
                    .lineLimit(3)
                    .frame(width: viewWidth * 0.8, alignment: .leading)
                    .padding(.bottom, 0.1)
                Text(cell.subTitle)
                    .font(.system(size: viewWidth * 0.033))
                    .foregroundColor(.white)
                    .opacity(0.9)
            }
            .padding([.top, .bottom], 25)
            .padding([.leading, .trailing], 20)
        }
        .cornerRadius(15)
        .padding([.leading, .trailing], 20)
        .frame(width: viewWidth, height: viewWidth)
    }
}

struct NewsCellType_Previews: PreviewProvider {
    static var previews: some View {
        NewsCellType(section: Section(type: .news, news: [Cell(image: "", title: "", subTitle: "", date: "")]), cell: Cell(image: "number.of.day", title: "Цифра дня: сколько можно получить золота из более чем двухсот смартфонов", subTitle: "Оказывается, процесс не очень выгодный", date: "Новости 3 часа назад"))
    }
}
