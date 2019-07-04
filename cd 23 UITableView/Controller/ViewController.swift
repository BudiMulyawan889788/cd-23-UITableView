//
//  ViewController.swift
//  cd 23 UITableView
//
//  Created by Budi Mulyawan on 04/07/19.
//  Copyright © 2019 Budi Mulyawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var namaBaru:String?
    
    lazy var contactModel: ContactModel = ContactModel()
    var dataContact = [Contact]()
    
    func displayData(dataContact: [Contact]){
        self.dataContact = dataContact
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! TableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! TableViewCell
        
        cell.displayData(data: dataContact[indexPath.row])
        
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if (editingStyle == .delete){
            dataContact.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Controller -> Model 
        displayData(dataContact: contactModel.getData())
    }


}

