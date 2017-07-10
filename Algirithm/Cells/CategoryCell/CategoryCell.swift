//
//  CategoryCell.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCellWith(categoryModel : CategoryModel) {
        self.categoryNameLabel.text = categoryModel.categoryName
        
        if let categoryImage : String = categoryModel.categoryIcon{
            self.backgroundImageView.image =  UIImage(named: categoryImage)
        }else{
            self.backgroundImageView.image = UIImage(named: "bg")
        }
    }
}
