//
//  ContestModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

import SwiftUI

struct ContestModel {
    static func getData() -> [Cell] {
        return [
            Cell(image: "13promax", title: "iPhone 13 Pro Max среди пользователей тарифа", subTitle: "Завершен", date: nil),
            Cell(image: "12promax", title: "iPhone 12 Pro Max среди пользователей тарифа", subTitle: "Завершен", date: nil),
            Cell(image: "11promax", title: "iPhone 11 Pro Max среди пользователей тарифа", subTitle: "Завершен", date: nil),
            Cell(image: "ps4", title: "Разыгрываем Sony PlayStation 4 Pro (1TB)", subTitle: "Завершен", date: nil),
            Cell(image: "best.name.11promax", title: "iPhone 11 Pro Max за лучшее название тарифа", subTitle: "Завершен", date: nil),
            Cell(image: "hydrogen", title: "Конкурс на The Red Hydrogen One", subTitle: "Завершен", date: nil),
            Cell(image: "airpods", title: "Конкурс на AirPods Pro", subTitle: "Завершен", date: nil),
            Cell(image: "macbook", title: "Конкурс на MacBook Air", subTitle: "Завершен", date: nil)
        ]
    }
}
