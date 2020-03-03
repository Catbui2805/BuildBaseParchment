//
//  HomeViewController.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    static let identifier: String = "HomeViewController"
    
    let lb: UILabel = {
        let lb = UILabel()
        lb.text = "Home"
        lb.textAlignment = .center
        lb.backgroundColor = .green
        return lb
    }()
    
    let bt: UIButton = {
        let bt = UIButton()
        bt.setTitle("Click me!", for: .normal)
        bt.backgroundColor = .gray
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        view.addSubview(lb)
        lb.frame = .init(x: 0, y: 140, width: view.frame.width, height: 50)
        
        view.addSubview(bt)
        bt.frame = .init(x: 0, y: 200, width: view.frame.width, height: 44)
        bt.addTarget(self, action: #selector(btAction), for: .touchUpInside)
        
    }
    
    @objc func btAction() {
        let category = CategoryViewController()
        category.hidesBottomBarWhenPushed = true
        category.title = "Category"
        navigationController?.pushViewController(category, animated: true)
    }
}
