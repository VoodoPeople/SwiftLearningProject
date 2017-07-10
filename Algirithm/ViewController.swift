//
//  ViewController.swift
//  Algirithm
//
//  Created by Ivan on 03.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit


class ViewController : UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    var models : [CategoryModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.models = Array()
        for _ : Int in 0..<100 {
    		self.models?.append(CategoryModel(rawModel: [
                CategoryConstants.kCategoryNameKey:"Electronics",
                CategoryConstants.kCategoryIdKey:1,
                CategoryConstants.kCategoryIconKey:"bg"
                ]))
        }
        
        categoryCollectionView.delegate = self;
        categoryCollectionView.dataSource = self;

        self.categoryCollectionView.register(UINib.init(nibName: CategoryCell.className, bundle: nil), forCellWithReuseIdentifier: CategoryCell.className)
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
        let categoryCell : CategoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.className, for: indexPath) as! CategoryCell
        
        if let category : CategoryModel = self.models?[indexPath.row]{
            categoryCell.setupCellWith(categoryModel: category)
        }
        return categoryCell
    }

    //MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let productList :ProductListViewController = self.storyboard?.instantiateViewController(withIdentifier: ProductListViewController.className) as! ProductListViewController
        
        self.navigationController?.pushViewController(productList, animated: true)
    }
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    	return CGSize(width: self.view.frame.size.width * 0.95, height: self.view.frame.size.height/4)
    }
    
}




