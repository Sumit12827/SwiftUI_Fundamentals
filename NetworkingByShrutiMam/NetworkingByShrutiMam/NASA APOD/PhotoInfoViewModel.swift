//
//  PhotoInfoViewModel.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import Foundation
@Observable
class PhotoInfoViewModel {
    var photoInfo: PhotoInfo?
    var errorMessage: String?
    static let previewViewModel = PhotoInfoViewModel()
    var isLoading = false
    
    
    let apiKey = "lYInv4fEMnSaPoaaTleGAuG4peGSa4diDoJY96jW"
    
    
    init(){
        Task{
            isLoading = true
            defer{
                isLoading = false
            }
            
            do{
                self.photoInfo = try await fetchPhotoInfo()
            } catch {
                print("error in initializing viewmodel")
            }
        }
    }
    
    func fetchPhotoInfo() async throws -> PhotoInfo {
        var nasaURLComponent = URLComponents(string:
        "https://api.nasa.gov/planetary/apod")!
        
        nasaURLComponent.queryItems = [
            URLQueryItem(name: "api_key " , value: apiKey),
            URLQueryItem(name: "date" , value: "2026-04-01")
        ]
        
        let (data,response) = try await URLSession.shared.data(from: nasaURLComponent.url!)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            errorMessage = "could could not load"
            throw URLError(.badServerResponse)
        }
        
        var myPhotoInfo = try JSONDecoder().decode(PhotoInfo.self,from: data)
        
        return myPhotoInfo
    }
    
}
