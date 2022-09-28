//
//  PodcastCellType.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 28.09.2022.
//

import SwiftUI

struct PodcastCellType: View {
    
    let cell: Cell
    private let viewWidth = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Image(cell.image)
                .resizable()
                .frame(height: viewWidth * 0.9)
            VStack(alignment: .leading, spacing: 7) {
                HStack {
                    Image(systemName: "stopwatch")
                    Text(cell.date ?? "")
                }
                .font(.system(size: viewWidth * 0.03))
                .fontWeight(.bold)
                Text(cell.title)
                    .font(.system(size: viewWidth * 0.067))
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    Text(cell.subTitle.uppercased())
                        .frame(height: viewWidth * 0.13, alignment: .bottom)
                        .fontWeight(.bold)
                    Spacer()
                    PlayButton()
                }
            }
            .foregroundColor(.white)
            .padding(25)
        }
        .frame(height: viewWidth * 0.9)
        .cornerRadius(10)
        .padding([.leading, .trailing], 20)
    }
}

struct PodcastCellType_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCellType(cell: Cell(image: "release16",
                                   title: "Podcast mini: предновогодний",
                                   subTitle: "Выпуск #16",
                                   date: "33 мин · 23 декабря 2021"))
    }
}
