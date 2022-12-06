//
//  TwoColumnTableViewCell.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class TwoColumnTableViewCell: UITableViewCell {

    static let identifier = "TwoColumnTableViewCell"
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(firstLabel)
        contentView.addSubview(secondLabel)
        
        firstLabel.text = "1"
        secondLabel.text = "Countries By GDP Nominal"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        firstLabel.frame = CGRect(x: 5, y: 5, width: 10, height: 100)
        secondLabel.frame = CGRect(x: 40, y: 5, width: 300, height: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
