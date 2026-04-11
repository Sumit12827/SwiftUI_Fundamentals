//
//  PhotoInfoView.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import SwiftUI

struct PhotoInfoView: View {
    @Environment(PhotoInfoViewModel.self) var viewModel
    var body: some View {
        
        
            if let PhotoInfo = viewModel.photoInfo {
                AsyncImage(url: URL (string:PhotoInfo.url)) {
                    phase in
                    switch phase{
                    case.empty:
                        ProgressView()
                        
                    case .success(let image):
                        image.resizable().scaledToFit()
                            .frame(height:300)
                        
                    case .failure(let error):
                        ContentUnavailableView("Error: \(error.localizedDescription)" ,systemImage:
                                                "photo.badge.exclamationmark")
                        
                        
                    @unknown default:
                        ContentUnavailableView("Error" ,
                                               systemImage: "photo.badge.exclamationmark")
                        
                    }
                }
            
            
        }
        
        
        
    }
}

#Preview {
    PhotoInfoView()
        .environment(PhotoInfoViewModel.previewViewModel)
}
