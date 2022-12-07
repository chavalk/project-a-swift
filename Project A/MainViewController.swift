//
//  ViewController.swift
//  Project A
//
//  Created by Jose Garcia on 12/1/22.
//

import UIKit

class MainViewController: UIViewController {

    private let homeFeedTable = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    func configureTableView() {
        view.addSubview(homeFeedTable)
        setTableViewDelegates()
        homeFeedTable.rowHeight = 100
        // Register cells
    }
    
    func setTableViewDelegates() {
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension MainViewController {
    
    func fetchData() -> [Row] {
        let row1 = Row(rank: 1, name: "Countries By GDP Nominal")
        let row2 = Row(rank: 2, name: "Liga MX Femenil Titles By Club")
        let row3 = Row(rank: 3, name: "Richest People By Net Worth Annual")
        let row4 = Row(rank: 4, name: "US Population By Metro")
        let row5 = Row(rank: 5, name: "Liga MX Varonil Titles By Club")
        let row6 = Row(rank: 6, name: "FIFA World Cup Titles By Country")
        
        return [row1, row2, row3, row4, row5, row6]
    }
}
