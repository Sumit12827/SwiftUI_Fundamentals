//
//  PhotoInfo.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import Foundation


struct PhotoInfo: Codable{
    var title : String
    var discription : String
    var url : String
    var copyright : String?
    
    enum CodingKeys: String, CodingKey{
        case title
        case discription = "explanation"
        case url
        case copyright
    }
}
