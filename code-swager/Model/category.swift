//
//  category.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-11.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import Foundation

struct category{
    //private for setting and public for retriving
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title : String , imageName : String){
        self.title = title
        self.imageName = imageName
    }
}
