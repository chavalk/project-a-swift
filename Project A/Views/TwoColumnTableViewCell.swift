//
//  TwoColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class TwoColumnTableViewCell: UITableViewCell {

    static let identifier = "TwoColumnTableViewCell"
    
    private let rank = UILabel()
    private let name = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(rank)
        contentView.addSubview(name)
        
        setRankConstraints()
        setNameConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func set(row: Row) {
        rank.text = row.rank
        name.text = row.name
    }
    
    func setRankConstraints() {
        rank.frame = CGRect(x: 5, y: 5, width: 10, height: 100)
    }
    
    func setNameConstraints() {
        name.frame = CGRect(x: 40, y: 5, width: 300, height: 100)
    }
}
