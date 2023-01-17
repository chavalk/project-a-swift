//
//  ViewController.swift
//  Project A
//
//  Created by Jose Garcia on 12/1/22.
//

import UIKit
import Combine

class HomeViewController: UIViewController {

    private var viewModel = HomeViewViewModel()
    private var subscriptions: Set<AnyCancellable> = []
    
    private let homeFeedTable = UITableView(frame: .zero, style: .grouped)
    var rows: [Row] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tables"
        rows = fetchData()
        configureTableView()
        let headerView = HeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
        homeFeedTable.tableHeaderView = headerView
        bindViews()
        viewModel.retireveTable(with: "V3bRdycPyUensGRV32ZF")
    }

    func configureTableView() {
        view.addSubview(homeFeedTable)
        setTableViewDelegates()
        homeFeedTable.rowHeight = 50
        homeFeedTable.register(TwoColumnTableViewCell.self, forCellReuseIdentifier: TwoColumnTableViewCell.identifier)
    }
    
    func setTableViewDelegates() {
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
    func bindViews() {
        viewModel.$table.sink { [weak self] table in
            DispatchQueue.main.async {
                self?.homeFeedTable.reloadData()
            }
        }
        .store(in: &subscriptions)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.table?.tableItems.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TwoColumnTableViewCell.identifier) as! TwoColumnTableViewCell
        let tableItemModel = viewModel.table?.tableItems[indexPath.row]
        cell.configureTable(with: tableItemModel?.number ?? "", tableName: tableItemModel?.tableName ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
}

extension HomeViewController {
    
    func fetchData() -> [Row] {
        let row1 = Row(rank: "1", name: "Countries By GDP Nominal")
        let row2 = Row(rank: "2", name: "Liga MX Femenil Titles By Club")
        let row3 = Row(rank: "3", name: "Richest People By Net Worth Annual")
        let row4 = Row(rank: "4", name: "US Population By Metro")
        let row5 = Row(rank: "5", name: "Liga MX Varonil Titles By Club")
        let row6 = Row(rank: "6", name: "FIFA World Cup Titles By Country")
        
        return [row1, row2, row3, row4, row5, row6]
    }
}
