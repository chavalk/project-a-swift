//
//  TableViewController.swift
//  Project A
//
//  Created by Jose Garcia on 12/7/22.
//

import UIKit

class TableViewController: UIViewController {

    private let tableView = UITableView(frame: .zero, style: .grouped)
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Countries By GDP Nominal"
        items = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ThreeColumnTableViewCell.identifier) as! ThreeColumnTableViewCell
        let item = items[indexPath.row]
        cell.set(item: item)
        return cell
    }
}

extension TableViewController {
    
    func fetchData() -> [Item] {
        let item1 = Item(rank: "1", firstColumn: "United States", secondColumn: "$25.035")
        let item2 = Item(rank: "2", firstColumn: "China", secondColumn: "$18.321")
        let item3 = Item(rank: "3", firstColumn: "Japan", secondColumn: "$4.300")
        let item4 = Item(rank: "4", firstColumn: "Germany", secondColumn: "$4.031")
        let item5 = Item(rank: "5", firstColumn: "India", secondColumn: "$3.468")
        let item6 = Item(rank: "6", firstColumn: "United Kingdom", secondColumn: "$3.198")
        let item7 = Item(rank: "7", firstColumn: "France", secondColumn: "$2.778")
        let item8 = Item(rank: "8", firstColumn: "Canada", secondColumn: "$2.200")
        let item9 = Item(rank: "9", firstColumn: "Russia", secondColumn: "$2.133")
        let item10 = Item(rank: "10", firstColumn: "Italy", secondColumn: "$1.996")
        let item11 = Item(rank: "11", firstColumn: "Iran", secondColumn: "$1.973")
        let item12 = Item(rank: "12", firstColumn: "Brazil", secondColumn: "$1.894")
        let item13 = Item(rank: "13", firstColumn: "South Korea", secondColumn: "$1.734")
        let item14 = Item(rank: "14", firstColumn: "Australia", secondColumn: "$1.724")
        let item15 = Item(rank: "15", firstColumn: "Mexico", secondColumn: "$1.424")
        let item16 = Item(rank: "16", firstColumn: "Spain", secondColumn: "$1.389")
        let item17 = Item(rank: "17", firstColumn: "Indonesia", secondColumn: "$1.289")
        let item18 = Item(rank: "18", firstColumn: "Saudi Arabia", secondColumn: "$1.010")
        let item19 = Item(rank: "19", firstColumn: "Netherlands", secondColumn: "$0.990")
        let item20 = Item(rank: "20", firstColumn: "Turkey", secondColumn: "$0.853")
        let item21 = Item(rank: "21", firstColumn: "Taiwan", secondColumn: "$0.828")
        let item22 = Item(rank: "22", firstColumn: "Switzerland", secondColumn: "$0.807")
        let item23 = Item(rank: "23", firstColumn: "Poland", secondColumn: "$0.716")
        let item24 = Item(rank: "24", firstColumn: "Argentina", secondColumn: "$0.630")
        let item25 = Item(rank: "25", firstColumn: "Sweden", secondColumn: "$0.603")
        let item26 = Item(rank: "26", firstColumn: "Belguim", secondColumn: "$0.589")
        let item27 = Item(rank: "27", firstColumn: "Thailand", secondColumn: "$0.534")
        let item28 = Item(rank: "28", firstColumn: "Israel", secondColumn: "$0.527")
        let item29 = Item(rank: "29", firstColumn: "Ireland", secondColumn: "$0.519")
        let item30 = Item(rank: "30", firstColumn: "Norway", secondColumn: "$0.504")
        let item31 = Item(rank: "31", firstColumn: "Nigeria", secondColumn: "$0.504")
        let item32 = Item(rank: "32", firstColumn: "United Arab Emirates", secondColumn: "$0.503")
        let item33 = Item(rank: "33", firstColumn: "Egypt", secondColumn: "$0.469")
        let item34 = Item(rank: "34", firstColumn: "Austria", secondColumn: "$0.468")
        let item35 = Item(rank: "35", firstColumn: "Bangladesh", secondColumn: "$0.460")
        let item36 = Item(rank: "36", firstColumn: "Malaysia", secondColumn: "$0.434")
        let item37 = Item(rank: "37", firstColumn: "Singapore", secondColumn: "$0.423")
        let item38 = Item(rank: "38", firstColumn: "Vietnam", secondColumn: "$0.413")
        let item39 = Item(rank: "39", firstColumn: "South Africa", secondColumn: "$0.411")
        let item40 = Item(rank: "40", firstColumn: "Philippines", secondColumn: "$0.401")
        let item41 = Item(rank: "41", firstColumn: "Denmark", secondColumn: "$0.368")
        let item42 = Item(rank: "42", firstColumn: "Pakistan", secondColumn: "$0.376")
        let item43 = Item(rank: "43", firstColumn: "Hong Kong", secondColumn: "$0.368")
        let item44 = Item(rank: "44", firstColumn: "Colombia", secondColumn: "$0.342")
        let item45 = Item(rank: "45", firstColumn: "Chile", secondColumn: "$0.310")
        let item46 = Item(rank: "46", firstColumn: "Romania", secondColumn: "$0.299")
        let item47 = Item(rank: "47", firstColumn: "Czech Republic", secondColumn: "$0.295")
        let item48 = Item(rank: "48", firstColumn: "Iraq", secondColumn: "$0.282")
        let item49 = Item(rank: "49", firstColumn: "Finland", secondColumn: "$0.281")
        let item50 = Item(rank: "50", firstColumn: "Portugal", secondColumn: "$0.255")
        
        return [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, item14, item15, item16, item17, item18, item19, item20, item21, item22, item23, item24, item25, item26, item27, item28, item29, item30, item31, item32, item33, item34, item35, item36, item37, item38, item39, item40, item41, item42, item43, item44, item45, item46, item47, item48, item49, item50]
    }
}
