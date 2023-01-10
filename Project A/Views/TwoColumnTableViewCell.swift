//
//  TwoColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class TwoColumnTableViewCell: UITableViewCell {

    static let identifier = "TwoColumnTableViewCell"
    
    private let rankLabel = UILabel()
    private let nameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(rankLabel)
        contentView.addSubview(nameLabel)
        
        setRankLabelConstraints()
        setNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func set(with number: String, tableName: String) {
        rankLabel.text = number
        nameLabel.text = tableName
    }
    
    func setRankLabelConstraints() {
        rankLabel.translatesAutoresizingMaskIntoConstraints = false
        rankLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        rankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        rankLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setNameLabelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: rankLabel.trailingAnchor, constant: 25).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
