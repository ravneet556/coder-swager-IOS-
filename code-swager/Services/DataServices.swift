//
//  DataServices.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-11.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import Foundation
class DataServices{
    static let instance = DataServices()
    //static will make one copy of data services that will hold data
    
    
    private let categories = [
    category(title: "SHIRTS", imageName: "shirts.png"),
    category(title: "HOODIES", imageName: "hoodies.png"),
    category(title: "HATS", imageName: "hats.png"),
    category(title: "DIGITAL", imageName: "digital.png")
    ]
    
  
    private let hats = [
    Product(title: "Developes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
     Product(title: "Developes Logo Hat Black", price: "$22", imageName: "hat02.png"),
      Product(title: "Developes Logo Hat White", price: "$22", imageName: "hat03.png"),
       Product(title: "Developes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    Product(title: "Developes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Developes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
            Product(title: "Developes Logo Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
                Product(title: "Developes Logo Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Developes Logo Shirt Black ", price: "$18", imageName: "shirt01.png"),
          Product(title: "Developes Logo Shirt Light Grey ", price: "$19", imageName: "shirt02.png"),
            Product(title: "Developes Logo Shirt Red ", price: "$18", imageName: "shirt03.png"),
              Product(title: "Hustle Delegate Grey ", price: "$18", imageName: "shirt04.png"),
                Product(title: "Kickfilp Studios Black ", price: "$18", imageName: "shirt05.png")
            
    ]
    private let digitalGoods = [Product]() //creating empty array

    func getCategories() -> [category]{
          return categories
          
      }
    func getProducts(forCategoryTitle  title : String) -> [Product]{
        switch title{
        case "SHIRTS":
            return getShirts()
        case "HATS":
                    return getHats()
        case "HOODIES":
                    return getHoodies()
        case "DIGITAL":
                    return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getHats() -> [Product]{
           return hats
       }
    func getHoodies() -> [Product]{
           return hoodies
       }
    func getDigitalGoods() -> [Product]{
           return digitalGoods
       }
}
