//
//  ErrorModel.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/7/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation

class ErrorModel: Decodable {
    var message:String
    
    enum CodingKeys: String,CodingKey {
        case message
    }
}
