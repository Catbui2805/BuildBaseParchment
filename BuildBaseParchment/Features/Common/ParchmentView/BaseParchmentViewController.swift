//
//  BaseParchmentViewController.swift
//  BuildBaseParchment
//
//  Created by Nguyen Tran Cong on 3/3/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import UIKit
import Parchment

class BaseParchmentViewController: UIViewController {
    static let identifier: String = "BaseParchmentViewController"
    
    var items: [BaseParchmentModel]?

    private var viewModel: BaseParchmentViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = BaseParchmentViewModel(items ?? [])
    }
}

// MARK:  Setup view

extension BaseParchmentViewController {
    
}

// MARK:  PagingViewControllerDataSource

extension BaseParchmentViewController: PagingViewControllerDataSource {
    func numberOfViewControllers(in pagingViewController: PagingViewController) -> Int {
        return viewModel.numberOfList()
    }
    
    func pagingViewController(_: PagingViewController, viewControllerAt index: Int) -> UIViewController {
        return viewModel.getItem(index).viewController
    }
    
    func pagingViewController(_: PagingViewController, pagingItemAt index: Int) -> PagingItem {
        return PagingIndexItem(index: index, title: viewModel.getItem(index).title)
    }
    
}

// MARK:  PagingViewControllerDelegate

extension BaseParchmentViewController: PagingViewControllerDelegate {
    
}
