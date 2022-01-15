//
//  FriendTableViewCellType.swift
//  FriendMVVM
//
//  Created by Ebrahim  Mo Gedamy on 10/21/20.
//

import Foundation

    enum FriendTableViewCellType {
        case normal(cellViewModel: FriendCellViewModel)
        case error(message: String)
        case empty
    }
