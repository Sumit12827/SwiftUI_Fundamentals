//
//  DataModel.swift
//  ClassTry
//
//  Created by Sumit on 07/04/26.
//
import Foundation
import UIKit

struct SamplePhoto: Identifiable{
    let id = UUID()
    let photoImage: UIImage
    
}
struct Message : Decodable{
    let id : Int
    let from: String
    let message: String
}
struct NewsStory: Decodable{
    let id : Int
    let title: String
    let strap: String
    let url: URL
}

