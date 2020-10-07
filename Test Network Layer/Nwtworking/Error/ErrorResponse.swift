//
//  ErrorResponse.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/7/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation

class ErrorResponse: Decodable {
    var status: String
    var error: ErrorModel
    
    enum CodingKeys: String,CodingKey {
        case status
        case error
    }
}
