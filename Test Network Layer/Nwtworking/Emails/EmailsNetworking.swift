//
//  EmailsNetworking.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/4/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation
import Alamofire

enum EmailsNetworking {
    case getEmails
    
    case addEmails(OrganizeEmail:String,FName:String,LName:String,UserName:String,TeamName:String,WebAddress:String,NumberofMembers:String)
    
    case updateData(Email:String,Tocken:String)
    
    case updateEmails (EmailName:String,params:[String:Any])
}

extension EmailsNetworking: TargetType {
    var baseURL: String {
        return baseUrl
    }
    
    var path: String {
        
        switch self {
        case .getEmails:
            return EmailsPoint
        case .addEmails:
            return EmailsPoint
        case .updateData:
            return EmailsPoint
        case .updateEmails(let EmailName , _ ):
            return "\(EmailsPoint)/\(EmailName)"
        }
    }
    
    var method: HTTPMethod {
        switch self{
        case .getEmails:
            return .get
        case .addEmails:
            return .post
        case .updateData:
            return .put
        case .updateEmails:
            return .put
        }
    }
    
    var task: Task {
        switch self {
            
        case .getEmails:
            return .requestPlain
            
        case .addEmails (let OrganizeEmail,let FName,let LName,let UserName,let TeamName,let WebAddress,let NumberofMembers):
            
            let data = [
                            "OrganizeEmail": OrganizeEmail,
                            "FName": FName,
                            "LName": LName,
                            "UserName": UserName,
                            "TeamName": TeamName,
                            "WebAddress": WebAddress,
                            "NumberofMembers": NumberofMembers
                        ] as [String:Any]
            
            return .requestParameters(parameters: data, encoding: JSONEncoding.default)
            
        case .updateData(let Email, let Tocken):
            
            let params = ["Email":Email,"tocken":Tocken]
    
            return .requestParameters(parameters: params, encoding: URLEncoding(destination: .queryString))
            
        
        case .updateEmails( _ , let params):
            
            let x = params 
            
            return .requestParameters(parameters: x , encoding: JSONEncoding.default)
            
        }
    }
    
    var headers: [String : String]? {
        switch self {
            case .getEmails:
                return [:]
            case .addEmails:
                return [:]
            case .updateData:
                return [:]
            case .updateEmails:
                return [:]
        }
    }
}
