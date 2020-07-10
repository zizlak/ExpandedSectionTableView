//
//  Model.swift
//  ExpandenCell
//
//  Created by Aleksandr Kurdiukov on 08.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import Foundation

struct ExpandedModel {
    var isExpanded: Bool
    let title: String
    let array: [String]
}

class ModelData{
    
    static var arrayOfData = [
        ExpandedModel(isExpanded: true, title: "Words", array: ["One", "Two", "Three", "Four", "Five"]),
        ExpandedModel(isExpanded: true, title: "Numbers", array: ["6", "7", "8", "9", "10"]),
        ExpandedModel(isExpanded: true, title: "Сharacters", array: ["Q", "W", "E", "R", "T", "Y"]),
        ExpandedModel(isExpanded: true, title: "Emojis", array: ["😀", "😡", "🥶", "😱", "😈"])
    ]

}
