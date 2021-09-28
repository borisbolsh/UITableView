//
//  CodedTableViewCell.swift
//  MultipleCustomCells
//
//

import UIKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"
    
    private let myLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myImageView: UIImageView = {
        let myImageView = UIImageView()
        return myImageView
    }()
    
    
    public func configure(){
        contentView.addSubview(myLable)
        contentView.addSubview(myImageView)
        
        myLable.text = "Coded cell"
        myLable.textAlignment = .center
        
        myImageView.image = UIImage(named: "image2")
        myImageView.contentMode = .scaleAspectFill
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLable.translatesAutoresizingMaskIntoConstraints = false
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        
        myImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive = true
        myImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        myImageView.widthAnchor.constraint(lessThanOrEqualToConstant: contentView.frame.size.width-300).isActive = true
        myImageView.heightAnchor.constraint(lessThanOrEqualToConstant: contentView.frame.size.height).isActive = true
        myImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        myLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        myLable.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 20).isActive = true
        myLable.widthAnchor.constraint(equalToConstant: contentView.frame.size.width-150).isActive = true
        myLable.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
    }
}
