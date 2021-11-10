//
//  DetailsViewController.swift
//  AssDemo
//
//  Created by student on 11/9/21.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailsTableView.dequeueReusableCell(withIdentifier: "showDetails", for: indexPath)
        cell.textLabel?.text = resArray[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var detailsTableView: UITableView!
    
    var detailList : String?
    
    var cars = ["Buggati", "Chevi" ,"Nissan" ,"BMW" ,"Audi"]
    var fruits = ["apple","oranges","bananas","grapes","watermelon"]
    var elec = ["iPhone","Television","Airpods","Laptop","ipad"]
    var resArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        if detailList == "Cars"
        {
            resArray = cars
        }
        else if detailList == "Fruits"{
            resArray = fruits
            
        }
        else{
            resArray = elec
        }
        
    }
    

    

}
