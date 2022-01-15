//
//  Users+Intecator.swift
//  usersMVVMDemo
//
//  Created by Ibrahim Mo Gedami on 28/01/2021.
//

import Foundation
import Alamofire

class UsersIntecator {
    
    let url = URL(string: URLs.url)!
    
    func getApi(completion : @escaping(EmployeeModel?,ResponseError?,Error?)->()){
        APIServices.instance.getData(url: url, method: .get, params: nil, encoding: JSONEncoding.default, headers: nil) { ( response : EmployeeModel?, responseError : ResponseError?, error) in
            if let error = error {
                completion(nil,nil,error)
            }else if let errorRes = responseError{
                completion(nil,errorRes,nil)
            }else{
                completion(response,nil,nil)
            }
            
        }
    }
}

struct URLs {
    static let url = "https://jsonplaceholder.typicode.com/users"
}

struct ResponseError : Codable{
    func error ()-> String? {
        return "Error in response"
    }
}
