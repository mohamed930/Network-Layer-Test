//
//  EmailsResponse.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/4/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation

class EmailsResponse: Decodable {
    var status: String?
    var mess: [EmailsModel]?
    
    enum CodingKeys: String,CodingKey {
        case status
        case mess = "message"
    }
}

class EmailsAddedResponse: Decodable {
    var status: String?
    var mess: String?
    var message: Int?
    
    enum CodingKeys: String,CodingKey {
        case status
        case mess =  "message"
    }
}

class EmailsUpdateResponse: Decodable {
    var message: Int?
    
    enum CodingKeys: String,CodingKey {
        case message
    }
}
