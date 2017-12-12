//
//  CategoryCell.swift
//  GeekProducts
//
//  Created by Murari Varma on 12/12/17.
//  Copyright © 2017 Murari Varma. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
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
