//
//  VideoCellType.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct VideoCellType: View {
    
    var section: Section?
    let cell: Cell
    private let viewWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            ZStack {
                Image(cell.image)
                    .resizable()
                    .frame(height: viewWidth * 0.53)
                Button {} label: {
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: viewWidth * 0.13, height: viewWidth * 0.13)
                        Image(systemName: "play.fill")
                            .foregroundColor(.black)
                    }
                    .padding([.leading, .bottom], 5)
                }

            }
            VStack(alignment: .leading) {
                Text(cell.subTitle.uppercased())
                    .font(.system(size: viewWidth * 0.03))
                    .opacity(0.6)
                    .padding(.top, 15)
                    .padding(.bottom, -4)
                Text(cell.title)
                    .font(.system(size: viewWidth * 0.05))
                    .fontWeight(.semibold)
                    .lineLimit(3)
                    .padding(.bottom, 4)
                HStack {
                    Image(cell.subImage)
                        .resizable()
                        .frame(width: viewWidth * 0.04, height: viewWidth * 0.04)
                    Text(cell.date ?? "")
                        .font(.system(size: viewWidth * 0.03))
                        .opacity(0.8)
                }
            }
            .padding([.leading, .trailing], 20)
            .frame(width: viewWidth, alignment: .leading)
            Spacer()
        }
        .cornerRadius(15)
        .padding([.leading, .trailing], 20)
        .frame(width: viewWidth, height: viewWidth * 0.95)
    }
}

struct VideoCellType_Previews: PreviewProvider {
    static var previews: some View {
        VideoCellType(section: Section(type: .video, news: [Cell(image: "", title: "", subTitle: "", date: "")]), cell: Cell(image: "parallel.iphone",
                                                                                                                             title: "Купил ПАРАЛЛЕЛЬНЫЙ iPhone 14 Pro за 140 000Р - предзаказ сработал!",
                                                                                                                             subTitle: "НОВОЕ ВИДЕО",
                                                                                                                             date: "Wylsacom 4 часа назад"))
    }
}
