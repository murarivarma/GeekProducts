//
//  ViewController.swift
//  GeekProducts
//
//  Created by Murari Varma on 12/12/17.
//  Copyright © 2017 Murari Varma. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.rowHeight = 155
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    // Mark: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let categoryData = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: categoryData)
            return cell
        } else {
            return CategoryCell()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

