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
        ExpandedModel(isExpanded: false, title: "Capitals", array: ["London", "Berlin", "Prague", "Paris", "Helsinki"]),
        ExpandedModel(isExpanded: false, title: "Continents", array: ["Africa","Eurasia", "North America", "South America", "Australia"]),
        ExpandedModel(isExpanded: false, title: "Time", array: ["17:00", "18:00", "22:30", "23:00", "23:30", "23:59"]),
        ExpandedModel(isExpanded: false, title: "Emojis", array: ["😀", "😡", "🥶", "😱", "😈"]),
        ExpandedModel(isExpanded: false, title: "Simpsons", array: ["Homer", "Bart", "Lisa", "Marge", "Meggie"])
    ]

}
