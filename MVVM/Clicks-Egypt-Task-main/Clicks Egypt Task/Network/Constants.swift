//
//  Constants.swift
//  Clicks Egypt Task
//
//  Created by Ibrahim Mo Gedami on 28/01/2022.
//

import Alamofire

class Constants{
    
    static let baseURL = "https://newsapi.org/v2/"
    static let articalListURL = baseURL + "top-headlines?country=eg&apiKey=798fcc650755491e9c45a86221cbcf19"
    static let header: HTTPHeaders = ["accept": "application/json",
                               "Content-Type": "application/json"]
}


//enum Constants : String {
//    case baseURL = "https://newsapi.org/v2/"
//    case articalListURL = "top-headlines?country=eg&apiKey=798fcc650755491e9c45a86221cbcf19"
//}
