//
//  CategoryModel.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class CategoryModel: NSObject {
    
    
    var categoryName : String!
    var categoryId : Int!
    
    var categoryIcon : String?
    var subcategory: [CategoryModel]?
    
    
    init(rawModel : [String:Any]) {
        super.init()
        self.categoryName = rawModel[CategoryConstants.kCategoryNameKey] as! String
        self.categoryId = rawModel[CategoryConstants.kCategoryIdKey] as! Int
        self.subcategory = rawModel[CategoryConstants.kSubcategoryKey] as? [CategoryModel]
        self.categoryIcon = rawModel[CategoryConstants.kCategoryIconKey] as? String
    }
    
}
