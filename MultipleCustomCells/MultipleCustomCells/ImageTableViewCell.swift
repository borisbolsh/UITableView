//
//  ImageTableViewCell.swift
//  MultipleCustomCells
//
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCell"
    @IBOutlet var myImageView:UIImageView!
    
    static func nib()->UINib{
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    public func configure(with imageName:String){
        myImageView.image = UIImage(named: imageName)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
