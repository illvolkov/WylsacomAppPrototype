//
//  VideoModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

struct VideoModel {
    static func getData() -> [Cell] {
        return [
            Cell(image: "parallel.iphone",
                 title: "Купил ПАРАЛЛЕЛЬНЫЙ iPhone 14 Pro за 140 000Р - предзаказ сработал!",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 4 часа назад"),
            Cell(image: "watch.ultra",
                 title: "Распаковка  Watch Ultra. Зачем так сложно, Apple?",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 2 дня назад"),
            Cell(image: "unpacking.airpods.pro2",
                 title: "Распаковка Apple AirPods Pro 2. Все стало лучше? Сравнение с первой версией и тесты...",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 3 дня назад"),
            Cell(image: "week.iphone14promax",
                 title: "Неделя с iPhone 14 Pro Max. Apple все починила? GTA 6 слили. Wylsa Plus Apple Special Edition...",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 4 дня назад"),
            Cell(image: "best.gadget",
                 title: "Лучший гаджет для iPhone 14",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 5 дней назад"),
            Cell(image: "wylsa.ring",
                 title: "Кольцо Wylsacom - замена Apple Pay. Что это? И старт предзаказа",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 5 дней назад"),
            Cell(image: "broken.iphone",
                 title: "Как я сломал iPhone 14 Pro Max и узнал что там внутри у нового iPhone вообще...",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 5 дней назад"),
            Cell(image: "unpacking.watch8",
                 title: "Распаковка Apple Watch Series 8 и SE2! Вот теперь реально все очень плохо!",
                 subTitle: "Новое видео",
                 date: "Wylsacom · 6 дней назад")
        ]
    }
}
