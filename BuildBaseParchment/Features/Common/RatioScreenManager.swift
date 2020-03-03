//
//  RatioScreenManager.swift
//  AssetManagementBarcodeScanner
//
//  Created by Nguyen Tran Cong on 1/23/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation
import UIKit

enum Screen {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
    static let ratio: CGFloat = width / 375
}

// MARK: Ratio Screen Manager CGFloat, Int, Double

extension CGFloat {
    var adjusted: CGFloat {
        return self * Screen.ratio
    }
}

extension Double {
    var adjusted: CGFloat {
        return CGFloat(self) * CGFloat(Screen.ratio)
    }
}

extension Int {
    var adjusted: CGFloat {
        return CGFloat(self) * CGFloat(Screen.ratio)
    }
}
