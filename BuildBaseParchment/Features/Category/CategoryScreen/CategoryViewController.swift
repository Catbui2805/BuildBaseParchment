//
//  CategoryViewController.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    static let identifier: String = "CategoryViewController"
    
    let cvContent: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .gray
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(cvContent)
        cvContent.frame = view.frame
        
    }
    
}
