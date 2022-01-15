//
//  Result.swift
//  FriendMVVM
//
//  Created by Ebrahim  Mo Gedamy on 10/21/20.
//

import Foundation

enum Result<T, U> where U: Error {
    case success(payload: T)
    case failure(U?)
}
