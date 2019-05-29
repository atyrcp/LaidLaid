//
//  CustomTableViewCell.swift
//  LaidLaid
//
//  Created by alien on 2019/5/29.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    var customLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        
        customLabel.translatesAutoresizingMaskIntoConstraints = false
//                customLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
//                customLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        customLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        customLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        customLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        customLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
        customLabel.sizeToFit()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        customLabel.backgroundColor = .green
        customLabel.textAlignment = .center
        self.addSubview(customLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
