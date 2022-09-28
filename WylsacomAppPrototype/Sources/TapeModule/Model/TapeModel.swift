//
//  TapeModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

struct TapeModel {
    static func getData() -> [Section] {
        return [
            Section(type: .news, news: [
                Cell(image: "number.of.day",
                     title: "Цифра дня: сколько можно получить золота из более чем двухсот смартфонов",
                     subTitle: "Оказывается, процесс не очень выгодный",
                     date: "Новости · 3 часа назад")]),
            
            Section(type: .video, news: [
                Cell(image: "parallel.iphone",
                     title: "Купил ПАРАЛЛЕЛЬНЫЙ iPhone 14 Pro за 140 000Р - предзаказ сработал!",
                     subTitle: "НОВОЕ ВИДЕО",
                     date: "Wylsacom · 4 часа назад")]),
            
            Section(type: .news, news: [
                Cell(image: "iphone15",
                     title: "iPhone 15 Ultra может получить двойную фронтальную камеру",
                     subTitle: "И 256 ГБ памяти в базовой версии",
                     date: "Новости · 4 часа назад"),
                Cell(image: "violet.iphone14Pro",
                     title: "У фиолетового iPhone 14 Pro и 14 Pro Max нашли проблемы с матовым слоем стекла задней панели",
                     subTitle: "Непонятно, это массовая или единичная проблема",
                     date: "Новости · 5 часов назад"),
                Cell(image: "google",
                     title: "Google запустила новый инструмент для удаления личных данных из результатов поиска",
                     subTitle: "Его анонсировали в мае на Google I/O 2022.",
                     date: "Новости · 6 часов назад"),
                Cell(image: "airpods.pro2",
                     title: "Владельцы AirPods Pro 2 жалуются на произвольные отключения",
                     subTitle: "Наушники могут отображаться как подключенные, но звука нет.",
                     date: "Новости · 10 часов назад"),
                Cell(image: "apple",
                     title: "Bloomberg: в 2023-м Apple представит MacBook Air 15, Mac Pro и HomePod с дисплеем",
                     subTitle: "А также MR-гарнитуру и iMac с чипом M3",
                     date: "Новости · 11 часов назад"),
                Cell(image: "mac.presentation",
                     title: "Слух: Apple не будет проводить презентацию новых Mac и iPad",
                     subTitle: "Новинки просто появятся на сайте.",
                     date: "Новости · 12 часов назад"),
                Cell(image: "iphone14",
                     title: "Главное за неделю: провал iPhone 14, утечка GTA VI не фейк и главное новшество iPhone 15",
                     subTitle: "А также другие тексты, которыми запомнилась уходящая неделя.",
                     date: "Дайджест · 1 день назад"),
                Cell(image: "gta",
                     title: "Игровая неделя: новые видеокарты NVIDIA, страсти по утечке GTAVI и игра про Железного человека",
                     subTitle: "Главные новости, трейлеры и игры недели.",
                     date: "Новости · 1 день назад")])
        ]
    }
}
