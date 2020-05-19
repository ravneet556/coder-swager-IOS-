//
//  Product.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-12.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import Foundation

struct Product{
    private(set) public var title : String
    private(set) public var price : String
    private(set) public var imageName : String
    
    init(title : String , price : String , imageName : String) {
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
}
