//
//  ThreeColumnHeaderUIView.swift
//  Project A
//
//  Created by Jose Garcia on 12/8/22.
//

import UIKit

class ThreeColumnHeaderUIView: UIView {

    private let rankLabel = UILabel()
    private let firstColumnLabel = UILabel()
    private let secondColumnLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(rankLabel)
        addSubview(firstColumnLabel)
        addSubview(secondColumnLabel)
        
        setRankLabelConstraints()
        setFirstColumnLabelConstraints()
        setSecondColumnLabelConstraints()
        
        rankLabel.text = "#"
        rankLabel.font = .systemFont(ofSize: 18, weight: .bold)
        firstColumnLabel.text = "Country"
        firstColumnLabel.font = .systemFont(ofSize: 18, weight: .bold)
        secondColumnLabel.text = "2022 Estimate (US$ trillion)"
        secondColumnLabel.font = .systemFont(ofSize: 18, weight: .bold)
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
        secondColumnLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        secondColumnLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
    }
}
