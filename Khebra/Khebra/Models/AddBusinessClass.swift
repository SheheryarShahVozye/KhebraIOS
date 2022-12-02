//
//  AddBusinessClass.swift
//  Khebra
//
//  Created by apple on 02/12/2022.
//

import Foundation

class AddBusinessObject: Codable {
    var category, details: String?
    var url: [String]?
}


class BusinessCategoryElement: Codable {
    var _id, category: String?
    var v: Int?
}

