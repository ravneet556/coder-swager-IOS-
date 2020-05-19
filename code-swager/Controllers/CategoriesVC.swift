//
//  ViewController.swift
//  code-swager
//
//  Created by Ravneet kaur on 2020-05-11.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
   
    @IBOutlet weak var categoryTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
        let category = DataServices.instance.getCategories()[indexPath.row]
           cell.updateView(category : category)
        return cell
        } else{
            return CategoryCell()
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC{
            let barBtn = UIBarButtonItem()
                       barBtn.title = ""
                       navigationItem.backBarButtonItem = barBtn
            assert(sender as? category != nil)
            //this is for build time. it is just protection development
            productVC.initProducts(category: sender as! category)
            
           
            
        }
    }
}

