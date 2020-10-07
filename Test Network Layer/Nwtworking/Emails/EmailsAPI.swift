//
//  EmailsAPI.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/4/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import Foundation

protocol EmailsAPIProtocol {
    
    func GetEmail(completion: @escaping (Result<EmailsResponse?,NSError>) -> Void)
    
    func AddEmail(OrganizeEmail:String,
     FName: String,
     LName: String,
     UserName: String,
     TeamName: String,
     WebAddress: String,
     NumberofMembers: String
    ,completion: @escaping (Result<EmailsAddedResponse?,NSError>) -> Void)
    
    func SetActive(Email:String,Tocken:String,completion: @escaping (Result<EmailsUpdateResponse?,NSError>) -> Void)
    
    func updataData(EmailName:String,params:[String:Any],completion: @escaping (Result<EmailsAddedResponse?,NSError>) -> Void)
    
}

class EmailsAPI: BaseAPI<EmailsNetworking> , EmailsAPIProtocol{
   
    func GetEmail(completion: @escaping (Result<EmailsResponse?,NSError>) -> Void) {
        
        self.fetchData(Target: .getEmails, ClassName: EmailsResponse.self) { (response) in
            completion(response)
        }
        
    }
    
    func AddEmail(OrganizeEmail:String,
                  FName: String,
                  LName: String,
                  UserName: String,
                  TeamName: String,
                  WebAddress: String,
                  NumberofMembers: String
                 ,completion: @escaping (Result<EmailsAddedResponse?,NSError>) -> Void) {
        
        self.fetchData(Target: .addEmails(OrganizeEmail: OrganizeEmail, FName: FName, LName: LName, UserName: UserName, TeamName: TeamName, WebAddress: WebAddress, NumberofMembers: NumberofMembers), ClassName:  EmailsAddedResponse.self) { (response) in
            
            completion(response)
            
        }
        
    }
    
    func SetActive(Email:String,Tocken:String,completion: @escaping (Result<EmailsUpdateResponse?,NSError>) -> Void) {
        
        self.fetchData(Target: .updateData(Email: Email, Tocken: Tocken), ClassName: EmailsUpdateResponse.self) { (response) in
            
            completion(response)
            
        }
        
    }
    
    func updataData(EmailName:String,params:[String:Any],completion: @escaping (Result<EmailsAddedResponse?,NSError>) -> Void) {
     
        self.fetchData(Target: .updateEmails(EmailName: EmailName, params: params), ClassName: EmailsAddedResponse.self) { (response) in
            
            completion(response)
            
        }
        
    }
}
