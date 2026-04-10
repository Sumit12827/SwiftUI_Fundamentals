//
//  Sandbox.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 09/04/26.
//

import Foundation
import Playgrounds

#Playground {
    
    
    //MARK: APPLE API LEARNING
    //    var myURL = URL(string: "https://www.apple.com")!
    //
    ////    var myURLSession = URLSession(configuration: .default)
    //    Task{
    //        let (data, response) = try await URLSession.shared.data(from: myURL)
    //
    //        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let dataString = String(data: data, encoding: .utf8) {
    //            print("Success")
    //            print(dataString)
    //            print(data as NSData)
    //        } else {
    //            print("Network Error")
    //        }
    //    }
    
    
    //MARK: NASA API LEARNING
        let apiKey = "lYInv4fEMnSaPoaaTleGAuG4peGSa4diDoJY96jW"
    ////
    ////    let nasaURL = URL(string: "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)&date=2026-04-01")!
    //
    //    var nasaComponentURL = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
    //
    //    nasaComponentURL.queryItems = [URLQueryItem(name: "api_key", value: apiKey), URLQueryItem(name: "date", value: "2026-04-01")]
    //
    //    Task{
    //        let (data,response) = try await URLSession.shared.data(from: nasaComponentURL.url!)
    //
    //        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let dataString = String(data: data, encoding: .utf8){
    //            print("Success")
    //            print(dataString)
    //        }
    //        else {
    //            print("Network Error")
    //        }
    //    }
    
    //MARK: iTUNES ACTIVITY
    
//    var iTunesComponentURL = URLComponents(string: "https://itunes.apple.com/search")!
//    
//    iTunesComponentURL.queryItems = [URLQueryItem(name: "term", value: "Shah Rukh Khan"), URLQueryItem(name: "country", value: "in")]
//    
//    Task{
//        let (data,response) = try await URLSession.shared.data(from: iTunesComponentURL.url!)
//        
//        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let dataString = String(data: data, encoding: .utf8){
//            print("Success")
//            print(dataString)
//        }
//        else {
//            print("Network Error")
//        }
//    }
    
    
    
    
    var nasaComponentURL = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
        
        nasaComponentURL.queryItems = [URLQueryItem(name: "api_key", value: apiKey), URLQueryItem(name: "date", value: "2026-04-01")]
        
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
        
        Task{
            let (data,response) = try await URLSession.shared.data(from: nasaComponentURL.url!)
            //        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let dataString = String(data: data, encoding: .utf8){
            //                print("Success")
            //                print(dataString)
            //        }
            //        else {
            //            print("Network Error")
            //        }
        
            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200{
                print("Successfully retrieve data")
                let photoInfo = try JSONDecoder().decode(PhotoInfo.self, from: data)
                print(photoInfo)
                
            }
            
        }
    
    

}
