//
//  TableViewCell.swift
//  DynamicTableViewExample
//
//  Created by Rune Madsen on 4/12/17.
//  Copyright © 2017 Rune Madsen. All rights reserved.
//

import UIKit

// The layout below is super basic and I am using hardcoded insets, etc. so it's not super pretty but it works.
// Main take-away is to ensure that your constraints are satisfied vertically, so the cell's contentView can stretch 
// according to the intrinsicContentSizes of each of the views (or for some, I set the height constraint specifically)

class TableViewCell: UITableViewCell
{
    
    let topView = UIView()
    let label = UILabel()
    let bottomView = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor.white
        
        contentView.addSubview(topView)
        topView.backgroundColor = UIColor.red
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        topView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        topView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        contentView.addSubview(label)
        label.numberOfLines = 0
        label.backgroundColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        
        contentView.addSubview(bottomView)
        bottomView.backgroundColor = UIColor.blue
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static func reuseIdentifier() -> String
    {
        return String(describing: self)
    }
    
}
