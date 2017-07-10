//
//  StudyTaks.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class StudyTaks: NSObject {
    
    var descriptionImage : UIImage?
    var condition : String?
    var category : String?
    var name : String?
    var result : String?
    
    init(dictionary : [String:Any]) {
        super.init()
    }
}
