//
//  ViewController.swift
//  Test Network Layer
//
//  Created by Mohamed Ali on 10/4/20.
//  Copyright © 2020 Mohamed Ali. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let emailsObj : EmailsAPIProtocol = EmailsAPI()
        
//        emailsObj.GetEmail { (response) in
//            switch response {
//            case .success(let emails):
//                for e in (emails?.mess!)! {
//                    print("id -> \(e.id),")
//                    print("Name -> \(e.FName + " " + e.LName),")
//                    print("Organization Name -> \(e.Organizationname),")
//                    print("UserName -> \(e.UserName)")
//                }
//            case .failure(let error):
//                print("Error \(error.localizedDescription)")
//            }
//        }
        
//        emailsObj.AddEmail(OrganizeEmail: "zyad7880422@gmail.com", FName: "Zyad", LName: "Ali", UserName: "zyad930", TeamName: "CPF20", WebAddress: "null", NumberofMembers: "0") { (response) in
//            switch response {
//                case .success(let emails):
//                    if emails?.status == "1" {
//                        print("Added Successfully!")
//                    }
//                case .failure(let error):
//                   print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
//            }
//
//        }
        
//        emailsObj.SetActive(Email: "mohammedali124@gmail.com", Tocken: "253526") { (response) in
//
//            switch response {
//                case .success(let update):
//
//                    if update?.message! == 1 {
//                        print("Update is Successfully")
//                    }
//
//                case .failure(let error):
//                    print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
//
//            }
//
//        }
        
        let params = [
                        "LName": "Atya",
                        "UserName": "zyad935",
                        "TeamName": "CPF20"
                     ]
        
        emailsObj.updataData(EmailName: "m@gmail.com", params: params) { (response) in

            switch response {
                case .success(let update):
                    if update?.status == "1" {
                        print("updated successfully!")
                    }
                case .failure(let error):
                    print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }

        }
        
    }
}

