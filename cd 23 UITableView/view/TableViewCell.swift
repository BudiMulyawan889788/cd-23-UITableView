//
//  TableViewCell.swift
//  cd 23 UITableView
//
//  Created by Budi Mulyawan on 04/07/19.
//  Copyright © 2019 Budi Mulyawan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var name: UILabel!
    
    func displayData(data: Contact){
        name.text = data.nameContact
        status.text = data.statusContact
        imageUser.image = UIImage(named: data.imageContact!)
        
    }

}
