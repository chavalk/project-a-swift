//
//  TwoColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class TwoColumnTableViewCell: UITableViewCell {

    static let identifier = "TwoColumnTableViewCell"
    
    private let firstLabel = UILabel()
    private let secondLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(firstLabel)
        contentView.addSubview(secondLabel)
        
        setFirstLabelConstraints()
        setSecondLabelConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setFirstLabelConstraints() {
        firstLabel.frame = CGRect(x: 5, y: 5, width: 10, height: 100)
    }
    
    func setSecondLabelConstraints() {
        secondLabel.frame = CGRect(x: 40, y: 5, width: 300, height: 100)
    }
}
