//
//  ProductCell.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-12.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func upadteViews(product : Product){
        productImage.image = UIImage(named : product.imageName)
        productPrice.text = product.price
        productTitle.text = product.title
    }
}
