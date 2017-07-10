//
//  ProductModel.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class ProductModel: NSObject {
    
    var category : String!
    var productName : String!
    var productPreviewImage : UIImage?
    var price : String!
    var currency : String!
    
    init(rawData : [String:Any]) {
        super.init()
        self.productName = rawData[ProductConstants.kProductNameKey] as! String
        self.price = rawData[ProductConstants.kProductPriceKey] as! String
        self.currency = rawData[ProductConstants.kProductCurrencyKey] as! String
        self.category = rawData[ProductConstants.kProductCategoryKey] as! String
        self.productPreviewImage = UIImage(named: rawData[ProductConstants.kProductImagePreviewKey] as! String)
    }
}

enum Currency {
    case UAH,USD,EUR
}
