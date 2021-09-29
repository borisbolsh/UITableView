//
//  SecondTableViewCell.swift
//  MultiTVCustomCells
//
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    static let identifier = "SecondTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SecondTableViewCell", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .yellow
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
