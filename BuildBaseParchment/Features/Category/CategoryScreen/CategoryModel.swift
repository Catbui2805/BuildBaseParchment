//
//  CategoryModel.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation


class CategoryModel {
    var id: Int
    var name: String
    var image: String
    
    init(_ id: Int, _ name: String, _ image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}
