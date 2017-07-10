//
//  ProductListViewController.swift
//  Algorithm
//
//  Created by Ozzy on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var productTableView: UITableView!
    var products : [ProductModel]?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.products = Array()
        for _ : Int in 0..<20 {
            products?.append(ProductModel(rawData: [ProductConstants.kProductNameKey:"iMac",
                                                    ProductConstants.kProductCategoryKey:"Electronic",
                                                    ProductConstants.kProductPriceKey:"120",
                                                    ProductConstants.kProductCurrencyKey:"UAH",
                                                    ProductConstants.kProductImagePreviewKey:"bg"
                                                    ]))
        }
        self.productTableView.delegate = self;
        self.productTableView.dataSource = self;
        self.productTableView.register(UINib.init(nibName: ProductTableViewCell.className, bundle: nil), forCellReuseIdentifier: ProductTableViewCell.className)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let localProducts = self.products{
            return localProducts.count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let productCell : ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.className) as! ProductTableViewCell
        
        if let product : ProductModel = self.products?[indexPath.row] {
            productCell.setupCellWith(productModel: product)
        }
        return productCell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
