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
        return UITableViewCell()
    }
}

extension TableViewController {
    
    func fetchData() -> [Item] {
        let item1 = Item(rank: "1", name: "United States", nameSecond: "$25.035")
        let item2 = Item(rank: "2", name: "China", nameSecond: "$18.321")
        let item3 = Item(rank: "3", name: "Japan", nameSecond: "$4.300")
        let item4 = Item(rank: "4", name: "Germany", nameSecond: "$4.031")
        let item5 = Item(rank: "5", name: "India", nameSecond: "$3.468")
        let item6 = Item(rank: "6", name: "United Kingdom", nameSecond: "$3.198")
        let item7 = Item(rank: "7", name: "France", nameSecond: "$2.778")
        let item8 = Item(rank: "8", name: "Canada", nameSecond: "$2.200")
        let item9 = Item(rank: "9", name: "Russia", nameSecond: "$2.133")
        let item10 = Item(rank: "10", name: "Italy", nameSecond: "$1.996")
        let item11 = Item(rank: "11", name: "Iran", nameSecond: "$1.973")
        let item12 = Item(rank: "12", name: "Brazil", nameSecond: "$1.894")
        let item13 = Item(rank: "13", name: "South Korea", nameSecond: "$1.734")
        let item14 = Item(rank: "14", name: "Australia", nameSecond: "$1.724")
        let item15 = Item(rank: "15", name: "Mexico", nameSecond: "$1.424")
        let item16 = Item(rank: "16", name: "Spain", nameSecond: "$1.389")
        let item17 = Item(rank: "17", name: "Indonesia", nameSecond: "$1.289")
        let item18 = Item(rank: "18", name: "Saudi Arabia", nameSecond: "$1.010")
        let item19 = Item(rank: "19", name: "Netherlands", nameSecond: "$0.990")
        let item20 = Item(rank: "20", name: "Turkey", nameSecond: "$0.853")
        let item21 = Item(rank: "21", name: "Taiwan", nameSecond: "$0.828")
        let item22 = Item(rank: "22", name: "Switzerland", nameSecond: "$0.807")
        let item23 = Item(rank: "23", name: "Poland", nameSecond: "$0.716")
        let item24 = Item(rank: "24", name: "Argentina", nameSecond: "$0.630")
        let item25 = Item(rank: "25", name: "Sweden", nameSecond: "$0.603")
        let item26 = Item(rank: "26", name: "Belguim", nameSecond: "$0.589")
        let item27 = Item(rank: "27", name: "Thailand", nameSecond: "$0.534")
        let item28 = Item(rank: "28", name: "Israel", nameSecond: "$0.527")
        let item29 = Item(rank: "29", name: "Ireland", nameSecond: "$0.519")
        let item30 = Item(rank: "30", name: "Norway", nameSecond: "$0.504")
        let item31 = Item(rank: "31", name: "Nigeria", nameSecond: "$0.504")
        let item32 = Item(rank: "32", name: "United Arab Emirates", nameSecond: "$0.503")
        let item33 = Item(rank: "33", name: "Egypt", nameSecond: "$0.469")
        let item34 = Item(rank: "34", name: "Austria", nameSecond: "$0.468")
        let item35 = Item(rank: "35", name: "Bangladesh", nameSecond: "$0.460")
        let item36 = Item(rank: "36", name: "Malaysia", nameSecond: "$0.434")
        let item37 = Item(rank: "37", name: "Singapore", nameSecond: "$0.423")
        let item38 = Item(rank: "38", name: "Vietnam", nameSecond: "$0.413")
        let item39 = Item(rank: "39", name: "South Africa", nameSecond: "$0.411")
        let item40 = Item(rank: "40", name: "Philippines", nameSecond: "$0.401")
        let item41 = Item(rank: "41", name: "Denmark", nameSecond: "$0.368")
        let item42 = Item(rank: "42", name: "Pakistan", nameSecond: "$0.376")
        let item43 = Item(rank: "43", name: "Hong Kong", nameSecond: "$0.368")
        let item44 = Item(rank: "44", name: "Colombia", nameSecond: "$0.342")
        let item45 = Item(rank: "45", name: "Chile", nameSecond: "$0.310")
        let item46 = Item(rank: "46", name: "Romania", nameSecond: "$0.299")
        let item47 = Item(rank: "47", name: "Czech Republic", nameSecond: "$0.295")
        let item48 = Item(rank: "48", name: "Iraq", nameSecond: "$0.282")
        let item49 = Item(rank: "49", name: "Finland", nameSecond: "$0.281")
        let item50 = Item(rank: "50", name: "Portugal", nameSecond: "$0.255")
        
        return [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, item14, item15, item16, item17, item18, item19, item20, item21, item22, item23, item24, item25, item26, item27, item28, item29, item30, item31, item32, item33, item34, item35, item36, item37, item38, item39, item40, item41, item42, item43, item44, item45, item46, item47, item48, item49, item50]
    }
}
