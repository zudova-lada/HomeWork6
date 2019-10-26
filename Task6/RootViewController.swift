//
//  RootViewController.swift
//  Task6
//
//  Created by Лада on 24/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
    
    let dataSource = DataSource()
    
    let tableDelegate = TableDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        navigationItem.title = "Table"
        tableDelegate.navViewController = navigationController
        updateLayout(with: view.frame.size)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = dataSource
        tableView.delegate = tableDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = UIColor.blue
        view.addSubview(tableView)
    }
    
    private func updateLayout(with size: CGSize) {
        tableView.frame = CGRect.init(origin: .zero, size: size)
    }
}
