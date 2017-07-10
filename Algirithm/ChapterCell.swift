//
//  ChapterCell.swift
//  Algirithm
//
//  Created by Ivan on 07.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

@objc class ChapterCell: UICollectionViewCell {
    
    @IBOutlet weak var chapterHeaderLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCellWith(chapterModel : ChapterModel) {
        self.chapterHeaderLabel.text = chapterModel.chapterName
        self.backgroundImageView.image = chapterModel.chapterBackgroundImage
    }
}
