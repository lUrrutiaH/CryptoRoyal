//
//  ViewController.swift
//  CryptoRoyal
//
//  Created by PMStudent on 10/22/21.
//

import UIKit
//API Caller
// UI to show different cryptos
// MVVM

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(, forCellReuseIdentifier: )
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

