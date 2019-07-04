//
//  contact.swift
//  cd 23 UITableView
//
//  Created by Budi Mulyawan on 04/07/19.
//  Copyright © 2019 Budi Mulyawan. All rights reserved.
//

import Foundation

class Contact {
    var nameContact : String?
    var statusContact : String?
    var imageContact : String?
    
    init(nameContact : String, statusContact : String, imageContact : String?){
        self.nameContact = nameContact
        self.statusContact = statusContact
        self.imageContact = imageContact
    }
    
}
