//
//  HeaderUIView.swift
//  Project A
//
//  Created by Jose Garcia on 12/5/22.
//

import UIKit

class HeaderUIView: UIView {

    private let poundLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(poundLabel)
        addSubview(nameLabel)
        
        poundLabel.text = "#"
        poundLabel.font = .systemFont(ofSize: 18, weight: .bold)
        nameLabel.text = "Table"
        nameLabel.font = .systemFont(ofSize: 18, weight: .bold)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        poundLabel.frame = CGRect(x: 5, y: 5, width: 15, height: 100)
        nameLabel.frame = CGRect(x: 40, y: 5, width: 300, height: 100)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
