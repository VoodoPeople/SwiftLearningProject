//
//  ChapterModel.swift
//  Algirithm
//
//  Created by Ivan on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit




class ChapterModel: NSObject {
    var chapterName : String!
    var chapterBackgroundImage : UIImage!
    
    
    init(rawDictionary : [String:Any]) {
        
        self.chapterName = rawDictionary[ModelConstants.chapterNameDictionatyKey] as! String;
        self.chapterBackgroundImage = rawDictionary[ModelConstants.chapterBGImageDictionatyKey] as! UIImage;
        
    	super.init()
    }
        
    override var description: String {
        let descriptionDictionary : [String : Any] = [ModelConstants.chapterNameDictionatyKey : self.chapterName, ModelConstants.chapterNameDictionatyKey : self.chapterBackgroundImage ]
        return descriptionDictionary.description
    }
    
}

struct ModelConstants {
    
    static let chapterNameDictionatyKey = "Name";
    static let chapterBGImageDictionatyKey = "bgImage";
    
}
