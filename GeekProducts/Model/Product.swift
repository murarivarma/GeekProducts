//
//  Product.swift
//  GeekProducts
//
//  Created by Murari Varma on 12/12/17.
//  Copyright © 2017 Murari Varma. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}
