//
//  TwoColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class TwoColumnTableViewCell: UITableViewCell {

    static let identifier = "TwoColumnTableViewCell"
    
    private let numberLabel = UILabel()
    private let tableNameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(numberLabel)
        contentView.addSubview(tableNameLabel)
        
        setRankLabelConstraints()
        setNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configureTable(with number: String, tableName: String) {
        numberLabel.text = number
        tableNameLabel.text = tableName
    }
    
    func setRankLabelConstraints() {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setNameLabelConstraints() {
        tableNameLabel.translatesAutoresizingMaskIntoConstraints = false
        tableNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        tableNameLabel.leadingAnchor.constraint(equalTo: numberLabel.trailingAnchor, constant: 25).isActive = true
        tableNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
