//
//  ImageViewModel.swift
//  ClassTry
//
//  Created by Sumit on 07/04/26.
//

import Foundation
import UIKit

enum ImageError: Error {
    case noImageFound
}

@Observable
class ImageViewModel {
    var images: [SamplePhoto] = []
    var timerCount = 0
    var isLoading = false
    private var timer: Timer?

    let assetImages = ["Image1", "Image2", "Image3"]

    init() {
        //
        startTimer()
    }

    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.timerCount += 1
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func fetchImages() {
        images.removeAll()
        isLoading = true
        for name in assetImages {
            do {
                let uiImage = try fetchImage(named: name)
                displayImage(image: uiImage)
            } catch {
                print("Error: \(error)")
            }
        }
        isLoading = false
    }

    @discardableResult
    func fetchImage(named name: String) throws -> UIImage {
        // Simulate delay (avoid blocking main thread in production)
        Thread.sleep(forTimeInterval: 0.1)
        return try decodeImage(named: name)
    }

    func decodeImage(named name: String) throws -> UIImage {
        if let image = UIImage(named: name) {
            return image
        } else {
            throw ImageError.noImageFound
        }
    }

    func displayImage(image: UIImage) {
        let photo = SamplePhoto(photoImage: image)
        images.append(photo)
    }
}
