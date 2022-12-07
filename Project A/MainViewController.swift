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
