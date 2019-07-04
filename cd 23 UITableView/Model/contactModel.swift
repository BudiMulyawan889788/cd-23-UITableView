//
//  contactModel.swift
//  cd 23 UITableView
//
//  Created by Budi Mulyawan on 04/07/19.
//  Copyright © 2019 Budi Mulyawan. All rights reserved.
//

import Foundation

class ContactModel {
    var imageData = "ContactPerson"
    var nameData = ["Helmo","Wila","Hadi"]
    var statusData = ["mobile","Home","Pager"]
    
    
    func getData() -> [Contact] {
        var dataContact = [Contact]()
        for i in 0..<nameData.count {
            dataContact.append(Contact(nameContact: nameData[i], statusContact: statusData[i], imageContact: imageData))
        }
        
        return dataContact
    }
}
