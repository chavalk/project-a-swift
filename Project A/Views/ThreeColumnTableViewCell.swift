//
//  ThreeColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/8/22.
//

import UIKit

class ThreeColumnTableViewCell: UITableViewCell {

    static let identifier = "ThreeColumnTableViewCell"

    private let rankLabel = UILabel()
    private let firstColumnLabel = UILabel()
    private let secondColumnLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(rankLabel)
        contentView.addSubview(firstColumnLabel)
        contentView.addSubview(secondColumnLabel)
        
        setRankLabelConstraints()
        setFirstColumnLabelConstraints()
        setSecondColumnLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setRankLabelConstraints() {
        rankLabel.translatesAutoresizingMaskIntoConstraints = false
        rankLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        rankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        rankLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setFirstColumnLabelConstraints() {
        firstColumnLabel.translatesAutoresizingMaskIntoConstraints = false
        firstColumnLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        firstColumnLabel.leadingAnchor.constraint(equalTo: rankLabel.trailingAnchor, constant: 25).isActive = true
        firstColumnLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setSecondColumnLabelConstraints() {
        secondColumnLabel.translatesAutoresizingMaskIntoConstraints = false
        secondColumnLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        secondColumnLabel.leadingAnchor.constraint(equalTo: rankLabel.trailingAnchor, constant: 25).isActive = true
        secondColumnLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
