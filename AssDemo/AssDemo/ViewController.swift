//
//  ViewController.swift
//  AssDemo
//
//  Created by student on 11/9/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allProducts", for: indexPath)
               cell.textLabel?.text = listArray[indexPath.row]
               return cell
    }
    
    
    

    @IBOutlet weak var tableView: UITableView!
    var listArray = [
        "Fruits",
        "Cars",
        "Electronic Gadgets"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "showDetails"{
            let destination =  segue.destination as! DetailsViewController
            destination.detailList = listArray[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}

