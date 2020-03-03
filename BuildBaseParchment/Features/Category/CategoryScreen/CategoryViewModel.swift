//
//  CategoryViewModel.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation

class CategoryViewModel {
    private var items: [CategoryModel] = []
    
    init(_ items: [CategoryModel]) {
        self.items = items
    }
    
    func update(_ items: [CategoryModel]) {
        self.items = items
    }
    
    func getItem(_ index: Int) -> CategoryModel {
        return self.items[index]
    }
    
    func getItems() -> [CategoryModel] {
        return self.items
    }
    
    func numberOfList() -> Int {
        return self.items.count
    }
    
    func editItem(_ index: Int, _ item: CategoryModel) {
        self.items[index] = item
    }
    
    func addItem(_ item: CategoryModel) {
        self.items.append(item)
    }
}
