//
//  ContentView.swift
//  ClassTry
//
//  Created by Sumit on 07/04/26.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = ImageViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Timer :\(viewModel.timerCount)")
                    .font(.largeTitle)
                    .bold()
                Button("Load Image (sync)"){
                    Task {
                        do{
                            try await
                            viewModel
                                .fetchAndDisplayImages()
                        }catch {
                            print("Error:\(error)")
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                ScrollView{
                    LazyVGrid(columns:
                                [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
                                ]) {
                        ForEach(viewModel.images) { photo in
                            Image(uiImage : photo.photoImage)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
