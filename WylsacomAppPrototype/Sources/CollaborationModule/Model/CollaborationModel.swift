//
//  CollaborationModel.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 27.09.2022.
//

struct CollaborationModel {
    static func getData() -> [Cell] {
        return [
            Cell(image: "bose", title: "Аудио-очки Bose Frames", subTitle: "bose x wylsacom", date: nil),
            Cell(image: "huawei", title: "Звук от HUAWEI", subTitle: "huawei x wylsacom", date: nil),
            Cell(image: "ricoh", title: "Фототехника класса Hight-end", subTitle: "ricoh x wylsacom", date: nil),
            Cell(image: "sneakerhead", title: "Подборка кроссовок на осень", subTitle: "sneakerhead x wylsacom", date: nil),
            Cell(image: "sneakerhead2", title: "Кроссовки из переработанных материалов", subTitle: "sneakerhead x wylsacom", date: nil),
            Cell(image: "sole.fresh", title: "Скидка на воскрешение кроссовок", subTitle: "sole fresh x wylsacom", date: nil)
        ]
    }
}
