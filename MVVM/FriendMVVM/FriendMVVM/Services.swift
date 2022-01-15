//
//  Services.swift
//  FriendMVVM
//
//  Created by Ebrahim  Mo Gedamy on 10/21/20.
//

import Foundation
import Alamofire

enum PostFriendFailureReason: Int, Error {
       case unAuthorized = 401
       case notFound = 404
   }

   typealias PostFriendResult = EmptyResult
   typealias PostFriendCompletion = (_ result: PostFriendResult) -> Void

   func postFriend(firstname: String, lastname: String, phonenumber: String, completion: @escaping PostFriendCompletion) {
       let param = ["firstname": firstname,
                    "lastname": lastname,
                    "phonenumber": phonenumber]
    
       AF.request("https://friendservice.herokuapp.com/addFriend", method: .post, parameters: param, encoding: JSONEncoding.default)
           .validate()
           .responseJSON { response in
               switch response.result {
               case .success:
                   completion(.success)
               case .failure(_):
                   if let statusCode = response.response?.statusCode,
                       let reason = PostFriendFailureReason(rawValue: statusCode) {
                       completion(.failure(reason))
                   }
                   completion(.failure(nil))
               }
       }
   }

fileprivate extension AppServerClient.GetFriendsFailureReason {
    func getErrorMessage() -&gt; String? {
        switch self {
        case .unAuthorized:
            return "Please login to load your friends."
        case .notFound:
            return "Could not complete request, please try again."
        }
    }
}
