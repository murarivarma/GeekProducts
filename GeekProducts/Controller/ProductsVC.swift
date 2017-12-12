//
//  ProductsVC.swift
//  GeekProducts
//
//  Created by Murari Varma on 12/12/17.
//  Copyright © 2017 Murari Varma. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    // Mark: - UICollectionView Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productsCollection.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            cell.updateViews(product: products[indexPath.row])
            
            return cell
        } else {
            return ProductCell()
        }
    }
    

}
