//
//  ProductsVC.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-12.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource{
 
    

    @IBOutlet weak var productCollection : UICollectionView!

    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.delegate = self
        productCollection.dataSource = self

    }
    func initProducts(category : category){
        products = DataServices.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
        let product = products[indexPath.row]
        cell.upadteViews(product: product)
        return cell
   }
  return ProductCell()
    }
}
