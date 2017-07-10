//
//  ProductTableViewCell.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCellWith(productModel : ProductModel){
        self.productNameLabel.text = productModel.productName
        self.productPriceLabel.text = productModel.price
        self.productDescriptionLabel.text = productModel.category
        if let icon = productModel.productPreviewImage {
            self.previewImageView.image = icon;
        }else{
            self.previewImageView.image = UIImage(named: "bg")
        }
    }
}
