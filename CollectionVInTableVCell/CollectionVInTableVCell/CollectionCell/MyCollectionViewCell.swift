//
//  MyCollectionViewCell.swift
//  CollectionVInTableVCell
//
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell",
                     bundle: nil)
    }
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myImage.image = UIImage(named: model.imageName)
        self.myImage.contentMode = .scaleToFill
    }
}

















