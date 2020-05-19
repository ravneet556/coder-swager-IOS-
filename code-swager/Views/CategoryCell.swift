//
//  CategoryCell.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-11.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateView(category : category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
