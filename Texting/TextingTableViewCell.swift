//
//  TextingTableViewCell.swift
//  Texting
//
//  Created by Amaan on 2018-08-31.
//  Copyright © 2018 amaancan. All rights reserved.
//

import UIKit

class TextingTableViewCell: UITableViewCell {

    let msgLabel = UILabel()
    let msgBackgroundView = UIView()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(msgBackgroundView) // order of adding matters -> keep background first
        addSubview(msgLabel)
        
        msgLabel.textColor = .white
        msgLabel.numberOfLines = 0
        msgLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            msgLabel.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            msgLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            msgLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            msgLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -125)
            ])
        
        msgBackgroundView.layer.cornerRadius = 10
        msgBackgroundView.backgroundColor = .green // this replaced msgLabel's background color
        msgBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            msgBackgroundView.topAnchor.constraint(equalTo: msgLabel.topAnchor, constant: -12),
            msgBackgroundView.bottomAnchor.constraint(equalTo: msgLabel.bottomAnchor, constant: 12),
            msgBackgroundView.leadingAnchor.constraint(equalTo: msgLabel.leadingAnchor, constant: -12),
            msgBackgroundView.trailingAnchor.constraint(equalTo: msgLabel.trailingAnchor, constant: 12)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        // Need super in this init?cs
    }
    
    

}
