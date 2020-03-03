//
//  CategoryCell.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    static let identifier: String = "CategoryCell"
    
    let iv: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 6
        return iv
    }()
    
    let lbName: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textAlignment = .center
        lb.numberOfLines = 2
        return lb
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        self.init()
    }
    
}

extension CategoryCell {
    func setupViews() {
        addSubview(iv)
        addSubview(lbName)
        
        NSLayoutConstraint.activate([
            iv.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            iv.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            iv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            iv.heightAnchor.constraint(equalToConstant: 80),
            
            lbName.topAnchor.constraint(equalTo: iv.bottomAnchor, constant: 8),
            lbName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            lbName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            lbName.heightAnchor.constraint(lessThanOrEqualToConstant: 44)
        ])
    }
}
