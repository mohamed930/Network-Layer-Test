//
//  EmailsModel.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/4/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation

class EmailsModel: Decodable {
    var id: String
    var Organizationname: String
    var FName:String
    var LName: String
    var UserName: String
    
    enum CodingKeys: String,CodingKey {
        case id = "_id"
        case Organizationname = "OrganizeEmail"
        case FName
        case LName
        case UserName
    }
}
