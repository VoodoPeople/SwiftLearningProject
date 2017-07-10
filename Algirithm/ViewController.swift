//
//  ViewController.swift
//  Algirithm
//
//  Created by Ivan on 03.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit


class ViewController : UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var chaptersCollectionView: UICollectionView!
    var models : [ChapterModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.models = Array()
        for _ : Int in 0..<100 {
    		self.models?.append(ChapterModel(rawDictionary: [ModelConstants.chapterNameDictionatyKey: "Series",ModelConstants.chapterBGImageDictionatyKey : UIImage(named: "bg")!]))
        }
        
        chaptersCollectionView.delegate = self;
        chaptersCollectionView.dataSource = self;

        self.chaptersCollectionView.register(UINib.init(nibName: ChapterCell.className, bundle: nil), forCellWithReuseIdentifier: ChapterCell.className)
    }
    
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let localModel = self.models {
            return localModel.count
        }
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let chapteCell : ChapterCell = collectionView.dequeueReusableCell(withReuseIdentifier: ChapterCell.className, for: indexPath) as! ChapterCell
        
        if let chapter : ChapterModel = self.models?[indexPath.row]{
            chapteCell.setupCellWith(chapterModel: chapter)
        }
        return chapteCell
    }

    //MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    }
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    	return CGSize(width: self.view.frame.size.width/2, height: 70)
    }
}




