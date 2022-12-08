//
//  HeaderUIView.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class HeaderUIView: UIView {

    private let rankLabel = UILabel()
    private let nameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(rankLabel)
        addSubview(nameLabel)
        
        setRankLabelConstraints()
        setNameLabelConstraints()
        
        rankLabel.text = "#"
        rankLabel.font = .systemFont(ofSize: 18, weight: .bold)
        nameLabel.text = "Table Name"
        nameLabel.font = .systemFont(ofSize: 18, weight: .bold)
    }

    required init?(coder: NSCoder) {
        fatalError()
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
