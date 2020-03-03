//
//  BaseParchmentModel.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation
import UIKit

class BaseParchmentModel {
    let title: String
    let viewController: UIViewController
    let image: String?
    
    init(_ title: String, _ viewController: UIViewController, _ image: String?) {
        self.title = title
        self.viewController = viewController
        self.image = image
    }
}
