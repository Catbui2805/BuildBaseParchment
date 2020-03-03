//
//  BaseParchmentViewModel.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation

class BaseParchmentViewModel {
    
    private var items: [BaseParchmentModel] = []
    
    init(_ items: [BaseParchmentModel]) {
        self.items = items
    }
    
    func update(_ items: [BaseParchmentModel]) {
        self.items = items
    }
    
    func addItem(_ item: BaseParchmentModel) {
        self.items.append(item)
    }
    
    func removeItem(_ index: Int) {
        self.items.remove(at: index)
    }
    
    func getItem(_ index: Int) -> BaseParchmentModel {
        return self.items[index]
    }
    
    func getItems() -> [BaseParchmentModel] {
        return self.items
    }
    
    func numberOfList() -> Int {
        return self.items.count
    }
    
    
}
